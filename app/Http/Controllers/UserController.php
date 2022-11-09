<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Category;
use App\Models\Section;
use App\Models\Admin_Question;
use App\Models\App_User_surrogate;
use App\Models\App_User;
use App\Models\MilestoneUser;
use App\Models\Introscreen_info;
use Carbon\Carbon;
use Auth;
use DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UserController extends Controller
{
    // ******************************************** Update profile data *********************************************
    public function profile(){
        $userid = 5;

        $user = User::find($userid);
        
        echo json_encode($user);
    }
    public function profile_update(Request $request){
        // return $request;
        // exit;
        $userid = 5;
       
        if($request->image){
            
            $image = $request->image;
            
            $name = time().'.'.$image->getClientOriginalExtension();
            
            $destinationPath = public_path('/images/profile');
            
            $image->move($destinationPath,$name);
        
        }

        $user = User::find($userid);
        $user->name = $request->name;
        $user->email = $request->email;
        $user->bio = $request->bio;
        if($request->image){
            $user->image = $name;
        }
        $user->insta = $request->insta;
        $user->forum = $request->forum;
        $user->save();
        
        if($user){
            $data['status']     = '1';
		    $data['message']  	= 'Profile updated successfully';    
        }else{
            $data['status']     = '0';
		    $data['message']  	= 'Profile updated Failed';
        }

        echo json_encode($data);
    }
    // ******************************************** For forgot password ***********************************************
    public function send_forgot_password(Request $request){
        $email = $request->email;
        $user = User::where('email',$email)->get();
        
        if(count($user)>0){
            $user_id = $user[0]['id'];
            $random_password = 'tRd'.strtotime(now()).'TDfcs';
            $user = User::find($user_id);
            $user->password = Hash::make($random_password);
            $user->save();

            ini_set("mail.log", "/tmp/mail.log");
    
            ini_set("mail.add_x_header", TRUE);
    
                $to         = $email;
        
                $subject    = "Your new password!";
        
                $Templet    = '<html>
    
                        <body marginheight="0" marginwidth="0" leftmargin="0" topmargin="0" bgcolor="#ffffff">
    
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
    
                            <tr>
    
                                <td bgcolor="#1746e0" align="center">
    
                                    <table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px;">
    
                                        <tr>
    
                                            <td align="center" valign="top" style="padding: 40px 10px 40px 10px;"> </td>
    
                                        </tr>
    
                                    </table>
    
                                </td>
    
                            </tr>
    
                            <tr>
    
                                <td bgcolor="#1746e0" align="center" style="padding: 0px 10px 0px 10px;">
    
                                    <table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px;">
    
                                        <tr>
    
                                            <td bgcolor="#ffffff" align="center" valign="top" style="padding: 40px 20px 20px 20px; border-radius: 4px 4px 0px 0px; color: #111111; font-family: "Lato", Helvetica, Arial, sans-serif; font-size: 48px; font-weight: 400; letter-spacing: 4px; line-height: 48px;">
    
                                                <h3 style="font-size: 48px; font-weight: 400; margin: 2; color:#824538;">Biggestask app!</h3> <img src=" https://img.icons8.com/clouds/100/000000/handshake.png" width="125" height="120" style="display: block; border: 0px;" />
    
                                            </td>
    
                                        </tr>
    
                                    </table>
    
                                </td>
    
                            </tr>
    
                            <tr>
    
                                <td bgcolor="#e1e1e1" align="center" style="padding: 0px 10px 0px 10px;">
    
                                    <table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px;">
    
                                        <tr>
    
                                            <td bgcolor="#ffffff" align="left">
    
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
    
                                                    <tr>
    
                                                        <td bgcolor="#ffffff" align="center" style="padding: 20px 30px 60px 30px;">
    
                                                            <table border="0" cellspacing="0" cellpadding="0">
    
                                                            <tr>
    
                                                                <h1>Your new password is :- '.$random_password.' </h1>
    
                                                            </tr>
                                                            
                                                            </table>
    
                                                        </td>
    
                                                    </tr>
    
                                                </table>
    
                                            </td>
    
                                        </tr> 
    
                                    </table>
    
                                </td>
    
                            </tr>
    
                        </table></body></html>';
    
            $headers = "From: biggestask@gmail.com.com" . "\r\n" .
    
            "CC: ";
                
            $headers .= ''."\r\n";
    
            $headers .="Content-Type: text/html;\n\tcharset=\"iso-8859-1\"\n";
    
            mail($to,$subject,$Templet,$headers);

            $data['status']     = '1';
		    $data['message']  	= 'Password forgot successfully';

        }else{
            $data['status']     = '0';
		    $data['message']  	= 'Email is not valid';
        }
        echo json_encode($data);
    }
    //********************************************  view login page ***************************************************
    public function logi_n(){
        return view('login');
    }
    // ******************************************* Check user login or not *********************************************
    public function check_login(Request $request){
       
        $user_data = array(
            'email' => $request->email,
            'password' => $request->password
        );

        if(Auth::attempt($user_data))
        {
            $user = User::where('email',$request->email)->get();
            $userId = $user[0]['id'];
            $name = $user[0]['name'];
        
            $data['status']     = '1';
		    $data['message']  	= 'Login successfully';
		    $data['userId']     = $userId;
		    $data['name']     = $name;

        }else{
            $data['status']     = '0';
		    $data['message']  	= 'Login faild';

        }
        
        echo json_encode($data);
    }
    // ************************************************* Logout admin ****************************************************
    public function logout(){
        Auth::logout();
        
        $data['status']     = '1';
		$data['message']  	= 'Logout successfully';

        echo json_encode($data);
    }
    // *********************************************** Change admin password ********************************************
    public function change_password(Request $request){
        
        $userid = 5;
        $user = User::find($userid);
        $password = $request->old_password;
        
        if(Hash::check($request->old_password, $user->password)){
            $user = User::find($userid);
            $user->password = Hash::make($request->new_password);
            $user->save();

            $data['status']     = '1';  
		    $data['message']  	= 'Password updated successfully';

        }else{
            $data['status']     = '0';
		    $data['message']  	= 'Old password has been not match';
        }
        echo json_encode($data);
    }
    // ************************************************* For category part **********************************************
    public function category(){
        $category = Category::get();
        // $category = DB::table('categories')
        //     ->join('admin__questions','categories.id','=', 'admin__questions.category_id')
        //     ->get();

        echo json_encode($category);
    }
    public function category_create(Request $request){
        
        $category = new Category;
        $category->category = $request->category;
        $category->save();

        if(category){
            $data['status']     = '1';
		    $data['message']  	= 'Category created successfully';
        }else{
            $data['status']     = '0';
		    $data['message']  	= 'Category has been not created';
        }
        echo json_encode($data);
    }
    public function category_edit($id){
        $category = Category::find($id);
        
        if($category){
            $data['status']     = '1';
		    $data['data']  	= $category;
        }else{
            $data['status']     = '0';
		    $data['message']  	= 'No record found';
        }
        echo json_encode($data);
    }
     public function category_update(Request $request,$id){
        $category = Category::find($id);
        $category->category = $request->category;
        $category->save();

        if($category){
            $data['status']     = '1';
		    $data['message']  	= 'category updated successfully';
        }else{
            $data['status']     = '0';
		    $data['message']  	= 'No record found';
        }
        echo json_encode($data);
    }
    // *********************************************** For section part ********************************************
     public function section_get(){
        $section = Section::get();
        echo json_encode($section);
    }
    public function section_create(Request $request){
        $section = new Section;
        $section->category_id = $request->category_id;
        $section->section = $request->section;
        $section->save();

        if($section){
            $data['status']     = '1';
		    $data['message']  	= 'Section created successfully';
        }else{
            $data['status']     = '0';
		    $data['message']  	= 'Section has been not created';
        }
        echo json_encode($data);
    }
    public function section_edit($id){
        $section = Section::find($id);
        
        if($section){
            $data['status']     = '1';
		    $data['data']  	= $section;
        }else{
            $data['status']     = '0';
		    $data['message']  	= 'No record found';
        }
        echo json_encode($data);
    }
    public function section_update(Request $request, $id){
        $section = Section::find($id);
        $section->category_id = $request->category_id;
        $section->section = $request->section;
        $section->save();

        if($section){
            $data['status']     = '1';
		    $data['message']  	= 'section updated successfully';
        }else{
            $data['status']     = '0';
		    $data['message']  	= 'section has been not updated';
        }
        echo json_encode($data);
    }
    public function section_destroy($id){
        $section = Section::find($id);
        $section->delete();

        $data['status']     = '1';
        $data['message']  	= 'section deleted successfully';

        echo json_encode($data);
    }
    // ************************************************* For Question part *********************************************
      public function question_get($id){
        $question = Admin_Question::where('category_id',$id)->get();
        echo json_encode($question);
     }
     public function question_get_all(){
        $question = Admin_Question::get();
        echo json_encode($question);
     }
    // public function question_create(Request $request){
    //     $question = new Admin_Question;
    //     $question->category_id = $request->category_id;
    //     $question->question = $request->question;
    //     $question->save();

    //     if($question){
    //         $data['status']     = '1';
		  //  $data['message']  	= 'Question created successfully';
    //     }else{
    //         $data['status']     = '0';
		  //  $data['message']  	= 'Question has been not created';
    //     }
    //     echo json_encode($data);
    // }
    public function question_edit($id){
        $question = Admin_Question::find($id);
        echo json_encode($question);
    }
    public function question_update(Request $request){
       
        $id = $request->id;
        
        if($id){
            $question = Admin_Question::find($id);
            $question->category_id = $request->category_id;
            $question->question = $request->question;
            $question->save();
        }else{
            $question = new Admin_Question;
            $question->category_id = $request->category_id;
            $question->question = $request->question;
            $question->save();    
        }
        if($question){
            $data['status']     = '1';
		    $data['message']  	= 'Question updated successfully';
        }else{
            $data['status']     = '0';
		    $data['message']  	= 'Question has been not updated';
        }
        echo json_encode($data);
    }
    public function question_destroy($id){
        $question = Admin_Question::find($id);
        $question->delete();
        
        $data['status']     = '1';
        $data['message']  	= 'question deleted successfully';

        echo json_encode($data);
    }
     // ************************************************* For our journy ******************************************
    public function get_journy(){
             $journy = DB::table('app__users')
            ->join('app__user_surrogates', 'app__users.id', '=', 'app__user_surrogates.partner_id')
            ->get();

            // $current_date = Carbon::parse(now())->format('Y/m/d');
            // $journy = DB::table('app__users')
            // ->join('app__user_surrogates', 'app__users.id', '=', 'app__user_surrogates.partner_id')
            // ->leftjoin('milestone_users','app__users.id','=','milestone_users.parent_id')
            // ->where('milestone_users.date','<',$current_date)
            // ->get();
            
            $journy_num = array();
            foreach($journy as $j){
                array_push($journy_num,$j->parent_partner_id);
            }
            $journy_count = count($journy_num);
            $journy_record = array();
            $current_date = Carbon::parse(now())->format('Y/m/d');
            $date_array = array();
            $title_array = array();
            for($i=0;$i<$journy_count;$i++){
                array_push($date_array,MilestoneUser::where('surrogate_id',$journy_num[$i])->where('date_status',1)->first('date'));
                array_push($title_array,MilestoneUser::where('surrogate_id',$journy_num[$i])->where('date_status',1)->first('title'));
                
            }
            
            $data['journy']         = $journy;
            $data['date_array']     = $date_array;
            $data['title_array']    = $title_array; 

            echo json_encode($data);
    }
    public function journy_milestone($id){
            $journy = DB::table('app__users')
            ->join('app__user_surrogates', 'app__users.id', '=', 'app__user_surrogates.partner_id')
            ->where('app__user_surrogates.id','=',$id)
            ->get();

            $milestone = DB::table('milestones')
            ->join('milestone_users', 'milestones.id', '=', 'milestone_users.milestone_id')
            ->where('milestone_users.surrogate_id','=',$id)
            ->get();

            $data['journy']     = $journy;
            $data['milestone']  = $milestone;

            echo json_encode($data);
    }
    public function journy_user_detail($id,$slug){
        if($slug == 'surrogate'){
            $user = App_User_surrogate::find($id);
        }else{
            $user = App_User::where('parent_partner_id',$id)->get();
        }
        echo json_encode($user);
    }
    public function journy_sorting(Request $request){
        if($request->sorting == 'DESC'){

            $journy = DB::table('app__users')
            ->join('app__user_surrogates', 'app__users.id', '=', 'app__user_surrogates.partner_id')
            ->orderBy('app__users.id', 'DESC')
            ->get();
            
            $journy_num = array();
            foreach($journy as $j){
                array_push($journy_num,$j->parent_partner_id);
            }
            $journy_count = count($journy_num);
            $journy_record = array();
            $current_date = Carbon::parse(now())->format('Y/m/d');
            $date_array = array();
            $title_array = array();
            for($i=1;$i<=$journy_count;$i++){
                array_push($date_array,MilestoneUser::where('surrogate_id',$i)->where('date_status',1)->first('date'));
                array_push($title_array,MilestoneUser::where('surrogate_id',$i)->where('date_status',1)->first('title'));
                
            }
            
            $data['journy']     = $journy;
            $data['date_array']  = $date_array;
            $data['title_array']  = $title_array;

        }else{
            $journy = DB::table('app__users')
            ->join('app__user_surrogates', 'app__users.id', '=', 'app__user_surrogates.partner_id')
            ->get();
            
            $journy_num = array();
            foreach($journy as $j){
                array_push($journy_num,$j->parent_partner_id);
            }
            $journy_count = count($journy_num);
            $journy_record = array();
            $current_date = Carbon::parse(now())->format('Y/m/d');
            $date_array = array();
            $title_array = array();
            for($i=1;$i<=$journy_count;$i++){
                array_push($date_array,MilestoneUser::where('surrogate_id',$i)->where('date_status',1)->first('date'));
                array_push($title_array,MilestoneUser::where('surrogate_id',$i)->where('date_status',1)->first('title'));
                
            }
            
            $data['journy']     = $journy;
            $data['date_array']  = $date_array;
            $data['title_array']  = $title_array;
        }
        echo json_encode($data);
    }
    // **************************************** Store intro screen data *********************************************
    public function get_introscreen_info(){
        $info = Introscreen_info::where('info_type','intro_screen')->get();
        $about_app = Introscreen_info::where('info_type','about_app')->get();
        $terms_of_service = Introscreen_info::where('info_type','terms_of_service')->get();
        $privacy_policy = Introscreen_info::where('info_type','privacy_policy')->get();
        $question_bank = Introscreen_info::where('info_type','question_bank')->get();
        
        if($info || $about_app || $terms_of_service || $privacy_policy || $question_bank){
            $data['status']     = '1';
            $data['intro_screen']  	= $info;
            $data['about_app'] = $about_app;
            $data['terms_of_service'] = $terms_of_service;
            $data['privacy_policy'] = $privacy_policy;
            $data['question_bank'] = $question_bank;
        }else{
            $data['status']     = '0';
            $data['message']  	= 'Record not found';
        }
        echo json_encode($data);
    }
    public function store_introscreen_info(Request $request,$id){
        if($id != 0){
            $info = Introscreen_info::find($id);
            $info->screen = $request->screen;
            $info->title = $request->title;
            $info->info = $request->info;
            $info->info_type = $request->info_type;
            $info->update();

            if($info){
                $data['status']     = '1';
                $data['message']  	= 'Information Updated successfully';
            }else{
                $data['status']     = '0';
                $data['message']  	= 'Information has been not updated';
            }

        }else{
            $info = new Introscreen_info;
            $info->screen = $request->screen;
            $info->title = $request->title;
            $info->info = $request->info;
            $info->info_type = $request->info_type;
            $info->save();

            if($info){
                $data['status']     = '1';
                $data['message']  	= 'Information stored successfully';
            }else{
                $data['status']     = '0';
                $data['message']  	= 'Information has been not stored';
            }
            
        }
        echo json_encode($data);
    } 
    public function introscreen_info_delete($id){
        $info = Introscreen_info::find($id);
        $info->delete();

        if($info){
            $data['status']     = '1';
            $data['message']  	= 'Information Deleted successfully';
        }else{
            $data['status']     = '0';
            $data['message']  	= 'Information has been not Deleted';
        }
        echo json_encode($data);
    }
    public function introscreen_info_edit($id){
        $info = Introscreen_info::find($id);
        
        if($info){
            $data['status']     = '1';
            $data['data']  	= $info;
        }else{
            $data['status']     = '0';
            $data['message']  	= 'Record not found';
        }
        echo json_encode($data);
    }
    
}