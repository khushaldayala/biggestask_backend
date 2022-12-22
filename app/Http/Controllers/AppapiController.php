<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\OTP;
use App\Models\App_User;
use App\Models\App_User_surrogate;
use App\Models\Community;
use App\Models\Contact;
use App\Models\MilestoneUser;
use App\Models\Milestone;
use App\Models\User;
use App\Models\Milestone_Image;
use App\Models\Admin_Question;
use App\Models\Admin_Question_Ans;
use App\Models\Pregnancy_Milestone_Status;
use App\Models\Pregnancy_Milestone;
use App\Models\Admin_question_status;
use App\Models\Introscreen_info;
use App\Models\Alert_Question;
use App\Models\Alert_Question_ans;
use App\Models\Notification;
use Illuminate\Support\Facades\Hash;
use Auth;
use DateTime;
use Response;
use DB;
use Illuminate\Support\Facades\Validator;
use Carbon\Carbon;

class AppapiController extends Controller
{
    // ********************************************* For user registration process *******************************************
    public function sendotp(Request $request){
        
        $validator = Validator::make(request()->all(), [

            'email'=>'required'

        ]);
        
        if ($validator->fails()) {
            return Response::json([
                'error_code' => '1007',
                'status' => '422',
                'message' => 'Email field are requeired'
            ], 422);
            
        }else{  
        
            $digits = 4;
            $otp = rand(pow(10, $digits-1), pow(10, $digits)-1);
            
            $getotp = OTP::where('email',$request->email)->get();
            
            if(count($getotp)>0){
    
                $otp_id = $getotp[0]['id'];
                $otpss = OTP::find($otp_id);
                $otpss->otp = $otp;
                $otpss->save();
    
            }else{
                $otps = new OTP;
                $otps->otp = $otp;
                $otps->email = $request->email;
                $otps->save();
            }
            $parent = App_User::where('parent_email',$request->email)->where('parent_status','active')->get();
            if(count($parent)>0){
                return Response::json([
                    'error_code' => '1003',
                    'status' => '409',
                    'message' => 'Email already exists'
                ], 409);
            }else{
                $parent = new App_User;
                $parent->parent_email = $request->email;
                $parent->save();
            }
            $surrogate = App_User_surrogate::where('email',$request->email)->where('status','active')->get();
            if(count($surrogate)>0){
                return Response::json([
                    'error_code' => '1003',
                    'status' => '409',
                    'message' => 'Email already exists'
                ], 409);
            }else{
                $surrogate = new App_User_surrogate;
                $surrogate->email = $request->email;
                $surrogate->save();
            }
            
            ini_set("mail.log", "/tmp/mail.log");
    
            ini_set("mail.add_x_header", TRUE);
    
                $to         = $request->email;
        
                $subject    = "Otp !";
        
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
    
                                                                <h4>Thank you for downloading The Biggest Ask app. Please enter this code in the app to verify your account and to proceed.   </h4>
    
                                                            </tr>
                                                            <tr align="center">
                                                                <h1>'.$otp.'</h1>
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
            
            return Response::json([
                'error_code' => '1002',
                'status' => '200',
                'message' => 'Otp sent successfully'
            ], 200);
            
        }
    }
    public function checkotp(Request $request){
        
        $validator = Validator::make(request()->all(), [

            'email'=>'required',

            'otp'=>'required'

        ]);
        
        if ($validator->fails()) {
            return Response::json([
                'error_code' => '1007',
                'status' => '422',
                'message' => 'All field are requeired'
            ], 422);
            
        }else{
            $getotp = OTP::where('email',$request->email)->get();
            if(count($getotp)>0){
                if($getotp[0]['otp'] == $request->otp){
                    
                    $otp_id = $getotp[0]['id'];
                    $otpss = OTP::find($otp_id);
                    $otpss->delete();
        
                    return Response::json([
                        'error_code' => '1002',
                        'status' => '200',
                        'message' => 'otp match successfully'
                    ], 200);
        
                }else{
                    return Response::json([
                        'error_code' => '1001',
                        'status' => '401',
                        'message' => 'otp has been not match'
                    ], 401); 
                }
            }else{
                return Response::json([
                    'error_code' => '1005',
                    'status' => '404',
                    'message' => 'Record not found'
                ], 404);
            }
        }

    }
    public function registration(Request $request){
        
        $validator = Validator::make(request()->all(), [

            'type'=>'required',

            'name'=>'required',

            'email'=>'required',
            
            'password'=>'required'

        ]);
        
        if ($validator->fails()) {
            return Response::json([
                'error_code' => '1007',
                'status' => '422',
                'message' => 'All field are requeired'
            ], 422);
            
        }else{

            $version = $request->header('version');
    
            if($request->type == 'surrogate'){
                $chek_email = App_User_surrogate::where('email',$request->email)->get();
                if(count($chek_email)>0){
    
                    $id =  $chek_email[0]['id'];
    
                    $user = App_User_surrogate::find($id);
                    $user->name = $request->name;
                    $user->password = Hash::make($request->password);
                    $user->version = $version;
                    $user->status = 'active';
                    $user->save();
                }
            }else{
                $chek_email = App_User::where('parent_email',$request->email)->get();
                
                if(count($chek_email)>0){
    
                    $id =  $chek_email[0]['id'];
    
                    $user = App_User::find($id);
                    $user->parent_name = $request->name;
                    $user->parent_password = Hash::make($request->password);
                    $user->parent_version = $version;
                    $user->parent_status = 'active';
                    $user->save();
                
                }
            }
            if($user){
                if($request->type == 'parent'){
                    $payment = $user->is_payment_done;
                    $user_id = $user->id;
                    $type = $request->type;
                    $partner_id = $user->parent_partner_id;
                    $email = $user->parent_email;
                    
                    if($payment == 0){
                        $statuss = 'payment_not_done';
                    }else{
                        $is_frequency = Admin_question_status::where('type','parent')->where('user_id',$user_id)->get();
                        if(count($is_frequency)>0)
                        {
                            if($partner_id){
                                $is_date_add = MilestoneUser::where('parent_id',$user_id)->where('milestone_id',2)->get();
                                $date_of_milestone = $is_date_add[0]['date'];
                                if($date_of_milestone){
                                    $statuss = '';
                                }else{
                                    $statuss = 'milestone_date_not_added';
                                }
                            }else{
                                $statuss = 'partner_not_assign';
                            }
                        }else{
                            $statuss = 'frequency_not_added';
                        }
                    }
                    
                    if($statuss == ''){
                        $status = 'on_boarding';
                    }else{
                        $status = $statuss;
                    }
                    
                    
                    if($payment == 0){
                        $is_payment_done = false;
                    }else{
                        $is_payment_done = true;
                    }
                    return Response::json([
                        'status' => $status,
                        'message' => 'User register successfully',
                        'user_id' => $user->id,
                        'partner_id' => $user->parent_partner_id,
                        'type' => 'parent',
                        'email' => $email
                    ], 201);
                }else{
                    
                    $user_id = $user->id;
                    $type = $request->type;
                    $partner_id = $user->partner_id;
                    $email = $user->email;
                    
                    $is_frequency = Admin_question_status::where('type','surrogate')->where('user_id',$user_id)->get();
                    if(count($is_frequency)>0)
                    {
                        if($partner_id){
                            $is_date_add = MilestoneUser::where('surrogate_id',$user_id)->where('milestone_id',2)->get();
                            $date_of_milestone = $is_date_add[0]['date'];
                            if($date_of_milestone){
                                $statuss = '';
                            }else{
                                $statuss = 'milestone_date_not_added';
                            }
                        }else{
                            $statuss = 'partner_not_assign';
                        }
                    }else{
                        $statuss = 'frequency_not_added';
                    }
                    
                    if($statuss == ''){
                        $status = 'on_boarding';
                    }else{
                        $status = $statuss;
                    }
                    
                    return Response::json([
                        'status' => $status,
                        'message' => 'User register successfully',
                        'user_id' => $user->id,
                        'partner_id' => $user->partner_id,
                        'type' => 'surrogate',
                        'email' => $email
                    ], 201);
                }
            }else{
                return Response::json([
                    'error_code' => '1001',
                    'status' => '401',
                    'message' => 'User registration request fail'
                ], 401);
            }
        }
    }
    public function resend_otp(Request $request){
        
        $validator = Validator::make(request()->all(), [

            'email'=>'required'

        ]);
        
        if ($validator->fails()) {
            return Response::json([
                'error_code' => '1007',
                'status' => '422',
                'message' => 'email are requeired'
            ], 422);
        }else{
        
           $getotp = OTP::where('email',$request->email)->get();
            if(count($getotp)>0){
            
            $otp = $getotp[0]['otp'];
            
            $otp_email = $getotp[0]['email'];
    
            ini_set("mail.log", "/tmp/mail.log");
    
            ini_set("mail.add_x_header", TRUE);
    
                $to         = $otp_email;
        
                $subject    = "Resend Otp !";
        
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
    
                                                <h1 style="font-size: 48px; font-weight: 400; margin: 2;">Welcome!</h1> <h6 style="margin: 2;">The biggestask app!</h6><img src=" https://img.icons8.com/clouds/100/000000/handshake.png" width="125" height="120" style="display: block; border: 0px;" />
    
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
    
                                                                <h1>Your Otp :-  '.$otp.' </h1>
    
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
    
            $headers = "From: biggestask@gmail.com" . "\r\n" .
            
            "CC: ";
                
            $headers .= ''."\r\n";
    
            $headers .="Content-Type: text/html;\n\tcharset=\"iso-8859-1\"\n";
    
            mail($to,$subject,$Templet,$headers);
            
            return Response::json([
                'error_code' => '1002',
                'status' => '200',
                'message' => 'Otp resent successfully'
            ], 200);
            
            }else{
                return Response::json([
                    'error_code' => '1005',
                    'status' => '404',
                    'message' => 'Record not found'
                ], 404);
            }
        }
       
    }
    public function get_user_detail(Request $request){
        
        $validator = Validator::make(request()->all(), [

            'userId'=>'required',

            'type'=>'required'

        ]);
        
        if ($validator->fails()) {
            return Response::json([
                'error_code' => '1007',
                'status' => '422',
                'message' => 'Pass the all required params'
            ], 422);
        }else{

            $id = $request->userId;
    
            $type = $request->type;
    
            if($type == 'parent'){
                $user = App_User::find($id);
            }else{
                $user = App_User_surrogate::find($id);
            }
            return json_encode($user);
        
        }
    }
    public function user_profile_update(Request $request,$id){
       
        // $validator = Validator::make(request()->all(), [


        // ]);
        
        if ($id == '') {
            return Response::json([
                'error_code' => '1007',
                'status' => '422',
                'message' => 'User id is required'
            ], 422);
        }else{
        
        // if ($validator->fails()) {
        //     return Response::json([
        //         'error_code' => '1007',
        //         'status' => '422',
        //         'message' => 'All field are requeired'
        //     ], 422);
        // }else{

            if($request->image1){
    
                $image1 = $request->file('image1');
    
                $name1 = time().'1'.'.'.$image1->getClientOriginalExtension();
    
                $destinationPath = public_path('/images/profile');
    
                $image1->move($destinationPath,$name1);
            }
            
            if($request->image2){
                
                $image2 = $request->file('image2');
    
                $name2 = time().'2'.'.'.$image2->getClientOriginalExtension();
    
                $destinationPath = public_path('/images/profile');
    
                $image2->move($destinationPath,$name2);
            }
            
            if($request->type == 'surrogate'){
                $user = App_User_surrogate::find($id);
                $user->name = $request->name;
                $user->gender = $request->gender;
                $user->number = $request->number;
                $user->email = $request->email;
                $user->date_of_birth = $request->date_of_birth;
                $user->partner_name = $request->partner_name;
                $user->address = $request->address;
                if($request->image1)
                {
                    $user->image1 = 'https://biggestaskbackend.justcodenow.com/images/profile/'.$name1;
                }
                
                $user->save();
    
                if($user){
    
                    return Response::json([
                        'error_code' => '1004',
                        'status' => '201',
                        'message' => 'User updated successfully'
                    ], 201);
    
                }else{
    
                    return Response::json([
                        'error_code' => '1001',
                        'status' => '401',
                        'message' => 'User update request fail'
                    ], 401);
    
                }
            }else{
                if($request->partner_type == 'true'){
                   $user = App_User::find($id);
                    $user->parent_name = $request->name;
                    $user->parent_gender = $request->gender;
                    $user->parent_number = $request->number;
                    $user->parent_email = $request->email;
                    $user->parent_date_of_birth = $request->date_of_birth; 
                    $user->parent_address = $request->address;
                    if($request->image1)
                    {
                        $user->parent_image1 = 'https://biggestaskbackend.justcodenow.com/images/profile/'.$name1;
                    }
                    $user->save();
                }else{
                    $user = App_User::find($id);
                    $user->parent_partner_name = $request->partner_name;
                    $user->parent_partner_gender = $request->partner_gender;
                    $user->parent_partner_phone = $request->partner_phone;
                    $user->parent_partner_dob = $request->partner_dob;
                    $user->parent_partner_address = $request->partner_address;
                    $user->parent_email = $request->email;
                    if($request->image2)
                    {
                        $user->parent_image2 = 'https://biggestaskbackend.justcodenow.com/images/profile/'.$name2;
                    }
                    $user->save();
                }
                
                if($user){
    
                    return Response::json([
                        'error_code' => '1004',
                        'status' => '201',
                        'message' => 'User updated successfully'
                    ], 201);
    
                }else{
    
                    return Response::json([
                        'error_code' => '1001',
                        'status' => '401',
                        'message' => 'User update request fail'
                    ], 401);
    
                }
            }
        // }
        }
    }
    public function login(Request $request){
        $fcm_token = $request->fcm_token;
        if($fcm_token){

        }else{
            return Response::json([
                'message' => 'fcm_token are required'
            ], 200);
            exit;
        }
        
        if($request->email && $request->password){

        $user = App_User::where('parent_email', $request->email)->where('parent_status','active')->first();
        if($user){
            $check_pass = Hash::check(request('password'), $user->parent_password);
            if($check_pass){
                $user_id = $user->id;
                
                $data = App_User::find($user_id);
                $data->fcm_token = $fcm_token;
                $data->save();
                
                $partner_id = $user->parent_partner_id;
                $payment = $user->is_payment_done;
                $image = $user->parent_image1;
                $user_name = $user->parent_name;
                $notification_status = $user->parent_notification_status;
                
                if($payment == 0){
                    $statuss = 'payment_not_done';
                }else{
                    $is_frequency = Admin_question_status::where('type','parent')->where('user_id',$user_id)->get();
                    if(count($is_frequency)>0)
                    {
                        if($partner_id){
                            $is_date_add = MilestoneUser::where('parent_id',$user_id)->where('milestone_id',2)->get();
                            $date_of_milestone = $is_date_add[0]['date'];
                            if($date_of_milestone){
                                $statuss = '';
                            }else{
                                $statuss = 'milestone_date_not_added';
                            }
                        }else{
                            $statuss = 'partner_not_assign';
                        }
                    }else{
                        $statuss = 'frequency_not_added';
                    }
                }
                
                if($statuss == ''){
                    $status = 'on_boarding';
                }else{
                    $status = $statuss;
                }
               
                $pregnancy_milestone_status = Pregnancy_Milestone_Status::where('type','parent')->where('user_id',$user_id)->pluck('status');
            
                if(count($pregnancy_milestone_status)>0){
                    $pregnancy_milestone_status333 = $pregnancy_milestone_status[0];
                }else{
                    $pregnancy_milestone_status333 = null;
                }
                
                return Response::json([
                    'status' => $status,
                    'message' => 'Login successfully',
                    'user_id' => $user_id,
                    'partner_id'=>$partner_id,
                    'type' => 'parent',
                    'user_name' => $user_name,
                    'image' => $image,
                    'pregnancy_milestone_status' => $pregnancy_milestone_status333,
                    'notification_status' => $notification_status
                ], 200);
            }else{
                return Response::json([
                    'error_code' => '1001',
                    'status' => '401',
                    'message' => 'Invalid credentials. Please try again.'
                ], 401);
            }
        }else{
            $user = App_User_surrogate::where('email', $request->email)->where('status','active')->first();
                if($user){
                    $check_pass = Hash::check(request('password'), $user->password);
                    if($check_pass){
                        $user_id = $user->id;
                        
                        $data = App_User_surrogate::find($user_id);
                        $data->fcm_token = $fcm_token;
                        $data->save();
                        
                        $partner_id = $user->partner_id;
                        $image = $user->image1;
                        $user_name = $user->name;
                        $notification_status = $user->notification_status;
                       
                        $is_frequency = Admin_question_status::where('type','surrogate')->where('user_id',$user_id)->get();
                        if(count($is_frequency)>0)
                        {
                            if($partner_id){
                                $is_date_add = MilestoneUser::where('surrogate_id',$user_id)->where('milestone_id',2)->get();
                                $date_of_milestone = $is_date_add[0]['date'];
                                if($date_of_milestone){
                                    $statuss = '';
                                }else{
                                    $statuss = 'milestone_date_not_added';
                                }
                            }else{
                                $statuss = 'partner_not_assign';
                            }
                        }else{
                            $statuss = 'frequency_not_added';
                        }
                       
                        
                        if($statuss == ''){
                            $status = 'on_boarding';
                        }else{
                            $status = $statuss;
                        }
                        $pregnancy_milestone_status = Pregnancy_Milestone_Status::where('type','surrogate')->where('user_id',$user_id)->pluck('status');
                        
                        if(count($pregnancy_milestone_status)>0){
                            $pregnancy_milestone_status333 = $pregnancy_milestone_status[0];
                        }else{
                            $pregnancy_milestone_status333 = null;
                        }
                        
                        return Response::json([
                            'status' => $status,
                            'message' => 'Login successfully',
                            'user_id' => $user_id,
                            'partner_id' => $partner_id,
                            'type' => 'surrogate',
                            'user_name' => $user_name,
                            'image' => $image,
                            'pregnancy_milestone_status' => $pregnancy_milestone_status333,
                            'notification_status' => $notification_status
                        ], 200);
                    }else{
                        return Response::json([
                            'error_code' => '1001',
                            'status' => '401',
                            'message' => 'Invalid credentials. Please try again.'
                        ], 401);
                    }
                }else{
                    return Response::json([
                        'error_code' => '1001',
                        'status' => '401',
                        'message' => 'Invalid credentials. Please try again.'
                    ], 401);
                }
            }
        }else{
            return Response::json([
                'error_code' => '1006',
                'status' => '500',
                'message' => 'Login faild, username & password are required'
            ], 500);
        }
    }
    public function user_logout(Request $request){
        $type = $request->type;
        $user_id = $request->user_id;

        if($type == 'parent'){
            $user = App_User::find($user_id);
            $user->fcm_token = NULL;
            $user->update();
        }else{
            $user = App_User_surrogate::find($user_id);
            $user->fcm_token = NULL;
            $user->update();
        }
        if($user){
            return Response::json([
                'status' => '200',
                'message' => 'User logout successfully'
            ], 201);
        }else{
            return Response::json([
                'status' => '401',
                'message' => 'Logout request faild'
            ], 401);
        }
    }
    public function update_payment_status(Request $request){
        $user_id = $request->user_id;
        $validator = Validator::make(request()->all(), [

            'user_id'=>'required',

        ]);
        if ($validator->fails()) {
            return response()->json([
                'error_code' => '1007',
                'status' => '422',
                'message' => 'pass the required parameters'
            ], 422);
        }else{
            $payment = App_User::find($user_id);
            $payment->is_payment_done = 1;
            $payment->update();

            if($payment){
                return Response::json([
                    'status' => '201',
                    'message' => 'Payment status change successfully'
                ], 201);
            }else{
                return Response::json([
                    'error_code' => '1001',
                    'status' => '401',
                    'message' => 'Payment status has been not changed'
                ], 401);
            }
        }
    }
    public function get_intended_profile(Request $request){
        $type = $request->type;
        $user_id = $request->user_id;

        if($type == 'parent'){
            $users = App_User::find($user_id);
            $partner_id = $users->parent_partner_id;

            $user = App_User_surrogate::find($partner_id);
            $name = $user->name;
            $d_o_b = $user->date_of_birth;
            $address = $user->address;
            $number = $user->number;
            $email = $user->email;
            $image1 = $user->image1;

            $data = array(
                'name' => $name,
                'date_of_birth' => $d_o_b,
                'address' => $address,
                'number' => $number,
                'email' => $email,
                'image' => $image1
            );
            $que_ans = DB::table('admin__question__ans')
                ->join('admin__questions','admin__question__ans.question_id','=', 'admin__questions.id')
                ->where('admin__question__ans.type', '=', 'surrogate')
                ->where('admin__question__ans.user_id', '=', $partner_id)
                ->get();
            if($que_ans){  
                $days = array();
                foreach($que_ans as $day){
                    $current_date = Carbon::parse(date('Y-m-d', strtotime(now())));
                    $created_at = Carbon::parse(date('Y-m-d', strtotime($day->created_at)));
                    $shift_difference = $current_date->diffInDays($created_at);
                    array_push($days,$shift_difference);
                }
            }
        }else{
            $users = App_User_surrogate::find($user_id);
            $partner_id = $users->partner_id;

            $user = App_User::find($partner_id);
            $name = $user->parent_name;
            $d_o_b = $user->parent_date_of_birth;
            $address = $user->parent_address;
            $number = $user->parent_number;
            $email = $user->parent_email;
            $image1 = $user->parent_image1;
            $image2 = $user->parent_image2;
            $partner_name = $user->parent_partner_name;
            $partner_date_of_birth = $user->parent_partner_dob;
            $partner_address = $user->parent_partner_address;
            $partner_number = $user->parent_partner_number;
            $partner_email = $user->parent_partner_email;

            $data = array(
                'name' => $name,
                'date_of_birth' => $d_o_b,
                'address' => $address,
                'number' => $number,
                'email' => $email,
                'image1' => $image1,
                'image2' => $image2,
                'partner_name' => $partner_name,
                'partner_date_of_birth' => $partner_date_of_birth,
                'partner_address' => $partner_address,
                'partner_number' => $partner_number,
                'partner_email' => $partner_email,
            );
            $que_ans = DB::table('admin__question__ans')
                ->join('admin__questions','admin__question__ans.question_id','=', 'admin__questions.id')
                ->where('admin__question__ans.type', '=', 'parent')
                ->where('admin__question__ans.user_id', '=', $partner_id)
                ->get();
            if($que_ans){
                $days = array();
                foreach($que_ans as $day){
                    $current_date = Carbon::parse(date('Y-m-d', strtotime(now())));
                    $created_at = Carbon::parse(date('Y-m-d', strtotime($day->created_at)));
                    $shift_difference = $current_date->diffInDays($created_at);
                    array_push($days,$shift_difference);
                }
            }
        }
        if($users){
            return Response::json([
                'status' => '200',
                'indended_user' => $data,
                'question_ans' => $que_ans,
                'days' => $days
            ], 200);
        }else{
            return Response::json([
                'error_code' => '1005',
                'status' => '404',
                'message' => 'Data not found'
            ], 404);
        }
    }
    // *************************************************** For community ***************************************************
    public function community_create(Request $request){
        
        // $validator = Validator::make(request()->all(), [

        //     'title'=>'required',

        //     'description'=>'required',

        //     'forum_link'=>'required',
            
        //     'insta_link'=>'required',

        //     'user_id'=>'required',

        //     'type'=>'required',
            
        //     'image'=>'required'

        // ]);
        
        // if ($validator->fails()) {
        //     return Response::json([
        //         'error_code' => '1007',
        //         'status' => '422',
        //         'message' => 'All field are requeired'
        //     ], 422);
        // }else{
        
            $image = $request->file('image');
            
            if($image){
    
                $name = time().'.'.$image->getClientOriginalExtension();
        
                $destinationPath = public_path('/images/community');
        
                $image->move($destinationPath,$name);
        
            }
            
            $community = new Community;
            $community->title = $request->title;
            $community->description = $request->description;
            $community->forum_link = $request->forum_link;
            $community->insta_link = $request->insta_link;
            if($image){
                $community->image = 'https://biggestaskbackend.justcodenow.com/images/community/'.$name;
            }
            $community->user_id = $request->user_id;
            $community->type = $request->type;
            $community->save();
    
            if($community){
                return Response::json([
                    'error_code' => '1004',
                    'status' => '201',
                    'message' => 'Community created successfully'
                ], 201); 
            }else{
                return Response::json([
                    'error_code' => '1001',
                    'status' => '401',
                    'message' => 'Community has been not created'
                ], 401); 
            }
        // }
    }
    public function get_community(){
        $type = $_GET['type'];
        $user_id = $_GET['user_id'];

        $community = Community::where('type',$type)->where('user_id',$user_id)->get();
        if($community){
            return Response::json([
                'data' => $community
            ], 200); 
        }else{
            return Response::json([
                'error_code' => '1005',
                'status' => '404',
                'message' => 'No record found'
            ], 404);
        }
    }
    // ****************************************************** For contact **************************************************
    public function contact_create(Request $request){
        
        $contact = new Contact;
        $contact->title = $request->title;
        $contact->agency_name = $request->agency_name;
        $contact->agency_email = $request->agency_email;
        $contact->agency_number = $request->agency_number;
        $contact->user_id = $request->user_id;
        $contact->type = $request->type;
        $contact->save();

        if($contact){
            return Response::json([
                'error_code' => '1004',
                'status' => '201',
                'message' => 'Contact created successfully'
            ], 201); 
        }else{
            return Response::json([
                'error_code' => '1001',
                'status' => '401',
                'message' => 'Contact has been not created'
            ], 401);
        }
    }
    public function contact_update(Request $request){
        $id = $request->id;

        $contact = Contact::find($id);
        $contact->title = $request->title;
        $contact->agency_name = $request->agency_name;
        $contact->agency_email = $request->agency_email;
        $contact->agency_number = $request->agency_number;
        $contact->user_id = $request->user_id;
        $contact->type = $request->type;
        $contact->save();

        if($contact){
            return Response::json([
                'status' => '200',
                'message' => 'Contact updated successfully'
            ], 200); 
        }else{
            return Response::json([
                'error_code' => '1001',
                'status' => '401',
                'message' => 'Contact has been not updated'
            ], 401);
        }
    }
    public function get_contact(){
        $type = $_GET['type'];
        $user_id = $_GET['user_id'];

        $contact = Contact::where('type',$type)->where('user_id',$user_id)->get();
        if($contact){
            return Response::json([
                'data' => $contact
            ], 200); 
        }else{
            return Response::json([
                'error_code' => '1005',
                'status' => '404',
                'message' => 'No record found'
            ], 404);
        }
    }
    // **************************************************** For milestone *************************************************
    public function get_milestone(){
        $type = $_GET['type'];
        $id = $_GET['user_id'];
        
        if($type == 'parent'){
            $milestone = MilestoneUser::where('parent_id',$id)->where('status','active')->get(['title','date','id','type']);
        }else{
            $milestone = array();
            $milestone2 = MilestoneUser::where('surrogate_id',$id)->where('status','active')->where('type','common')->get(['title','date','id','type']);
            $milestone1 = MilestoneUser::where('surrogate_id',$id)->where('status','active')->where('type','surrogate')->get(['title','date','id','type']);
            foreach($milestone2 as $m){
                    array_push($milestone,$m);
                }
            if(count($milestone1)>0){
                foreach($milestone1 as $m){
                    array_push($milestone,$m);
                }
            }else{
                $milestone = $milestone;
            }
        }
        return json_encode([
            'milestone' => $milestone
        ]);
    }
    public function assign_question(Request $request){
        
        $id = $request->milestone_id;

        if($request->type == 'parent'){
            $question = MilestoneUser::find($id);
            $question->surrogate_id = $request->surrogate_id;
            $question->save();
        }else{
            $question = MilestoneUser::find($id);
            $question->parent_id = $request->parent_id;
            $question->save();
        }

        if($question){
            return Response::json([
                'error_code' => '1004',
                'status' => '201',
                'message' => 'Assign Milestone successfully'
            ], 201);
        }else{
            return Response::json([
                'error_code' => '1001',
                'status' => '401',
                'message' => 'Milestone has been not assign'
            ], 401);
        }
    }
    public function get_assign_milestone(Request $request){
        $surrogateUserId = $request->userId;
        $user = DB::table('milestone_users')
                ->join('milestones','milestone_users.milestone_id','=', 'milestones.id')
                ->where('milestone_users.surrogate_id', '=', $surrogateUserId)
                ->get();

        return json_encode($user);
    }
    public function create_milestone(Request $request){
        $milestone = new Milestone;
        $milestone->milestone = $request->milestone;
        $milestone->user_type = $request->user_type;
        $milestone->user_id = $request->user_id;
        $milestone->save();

        if($request->user_type == 'parent'){
            $user = App_User::find($request->user_id);
            $partner_id = $user->parent_partner_id;
        }else{
            $user = App_User_surrogate::find($request->user_id);
            $partner_id = $user->partner_id;
        }

        if($milestone){

            if($request->user_type == 'parent'){
                $mileston = new MilestoneUser;
                $mileston->parent_id = $request->user_id;
                $mileston->surrogate_id = $partner_id;
                $mileston->title = $request->milestone;
                $mileston->type = $request->user_type;
                $mileston->milestone_id = $milestone->id;
                $mileston->date = $request->date;
                $mileston->location = $request->location;
                $mileston->longitude = $request->longitude;
                $mileston->latitude = $request->latitude;
                $mileston->save();
            }else{
                $mileston = new MilestoneUser;
                $mileston->surrogate_id = $request->user_id;
                $mileston->parent_id = $partner_id;
                $mileston->title = $request->milestone;
                $mileston->type = $request->user_type;
                $mileston->milestone_id = $milestone->id;
                $mileston->date = $request->date;
                $mileston->location = $request->location;
                $mileston->longitude = $request->longitude;
                $mileston->latitude = $request->latitude;
                $mileston->save();
            }
            if($mileston){
                return Response::json([
                    'error_code' => '1004',
                    'status' => '201',
                    'message' => 'Milestone created successfully'
                ], 201);
            }else{
                return Response::json([
                'error_code' => '1001',
                'status' => '401',
                'message' => 'Milestone has been not created'
            ], 401); 
            }
        }else{
            return Response::json([
                'error_code' => '1001',
                'status' => '401',
                'message' => 'Milestone has been not created'
            ], 401);
        }
    }
    public function store_milestone_ans(Request $request){
        
        $milestone_id = $request->milestone_id;
        $type = $request->type;
        $user_id = $request->user_id;

        foreach ($request->image as $key => $file) {

            $image = $file;

            $name = time().$key.'.'.$image->getClientOriginalExtension();
            
            $destinationPath = public_path('/images/milestone');
            
            $image->move($destinationPath,$name);

            $milestone_image = new Milestone_Image;
            $milestone_image->milestone_user_id = $milestone_id;
            $milestone_image->image = 'https://biggestaskbackend.justcodenow.com/images/milestone/'.$name;
            $milestone_image->type = $type;
            $milestone_image->user_id = $user_id;
            $milestone_image->save();

        }

        if($milestone_image){
            return Response::json([
                'status' => '201',
                'message' => 'Milestone updated successfully'
            ], 201);
        }else{
            return Response::json([
                'error_code' => '1001', 
                'status' => '401',
                'message' => 'Milestone has been not updated'
            ], 401);
        }
    }
    public function update_milestone_image(Request $request){

        $image = $request->image;

        $id = $request->image_id;

        $name = time().'.'.$image->getClientOriginalExtension();
        
        $destinationPath = public_path('/images/milestone');
        
        $image->move($destinationPath,$name);

        $milestone_image = Milestone_Image::find($id);
        $milestone_image->image = 'https://biggestaskbackend.justcodenow.com/images/milestone/'.$name;
        $milestone_image->save();

        if($milestone_image){
            return Response::json([
                'status' => '201',
                'message' => 'Milestone image updated successfully',
                'image' => $milestone_image->image
            ], 201);
        }else{
            return Response::json([
                'error_code' => '1001',
                'status' => '401',
                'message' => 'Milestone image has been not updated'
            ], 401);
        }
    }
    public function edit_milestone(){
        $type = $_GET['type'];
        $user_id = $_GET['user_id'];
        $milestone_id = $_GET['milestone_id'];
        $partner_id = $_GET['partner_id'];
        
        if($type == 'parent'){
            $milestone = MilestoneUser::where('id',$milestone_id)->where('parent_id',$user_id)->get(['id','parent_id','surrogate_id','type','milestone_id','title','share_note_with_biggestask_status','share_note_with_partner_status','surrogate_share_note_with_biggestask_status','surrogate_note','parent_note','date','location','milestone_image']);
            
            if($type == 'parent'){
                $milestoneId = $milestone[0]['id'];
                $milestone_image = array();
                $milestone_image1 = Milestone_Image::where('milestone_user_id',$milestoneId)->where('user_id',$user_id)->where('type','parent')->get();
                $milestone_image2 = Milestone_Image::where('milestone_user_id',$milestoneId)->where('user_id',$partner_id)->where('type','surrogate')->get();
                if(count($milestone_image1)>0 && count($milestone_image2)>0){
                    foreach($milestone_image1 as $one){
                        array_push($milestone_image,$one);
                    }
                    foreach($milestone_image2 as $two){
                        array_push($milestone_image,$two);
                    }
                }else if(count($milestone_image1)>0){
                    $milestone_image = $milestone_image1;
                }else if(count($milestone_image2)>0){
                    $milestone_image = $milestone_image2;
                }else{
                    $milestone_image = [];
                }
            }
        }else{
            $milestone = MilestoneUser::where('id',$milestone_id)->where('surrogate_id',$user_id)->get(['id','parent_id','surrogate_id','type','milestone_id','title','share_note_with_biggestask_status','share_note_with_partner_status','surrogate_share_note_with_biggestask_status','surrogate_note','parent_note','date','location','milestone_image']);
            
            if($type == 'surrogate'){
                $milestoneId = $milestone[0]['id'];
                $milestone_image = array();
                $milestone_image1 = Milestone_Image::where('milestone_user_id',$milestoneId)->where('user_id',$user_id)->where('type','surrogate')->get();
                $milestone_image2 = Milestone_Image::where('milestone_user_id',$milestoneId)->where('user_id',$partner_id)->where('type','parent')->get();
                if(count($milestone_image1)>0 && count($milestone_image2)>0){
                    foreach($milestone_image1 as $one){
                        array_push($milestone_image,$one);
                    }
                    foreach($milestone_image2 as $two){
                        array_push($milestone_image,$two);
                    }
                }else if(count($milestone_image1)>0){
                    $milestone_image = $milestone_image1;
                }else if(count($milestone_image2)>0){
                    $milestone_image = $milestone_image2;
                }else{
                    $milestone_image = [];
                }
            } 
        }
        if($milestone){
            return json_encode([
            'milestone' => $milestone,
            'milestone_image' => $milestone_image
            ]);
        }else{
            return Response::json([
                'error_code' => '1005',
                'status' => '404',
                'message' => 'Data not found'
            ], 404);
        }
        
    }
    public function update_milestone_ans_info(Request $request){
        
        $type = $request->type;
        $user_id = $request->user_id;
        $id = $request->milestone_id;

        if($type == 'parent'){
            $milestone = MilestoneUser::where('milestone_id',$id)->where('parent_id',$user_id)->get();
            $milestone_id = $milestone[0]['id'];
        }else{
            $milestone = MilestoneUser::where('milestone_id',$id)->where('surrogate_id',$user_id)->get();
            $milestone_id = $milestone[0]['id'];
        }

        $milestones = MilestoneUser::find($milestone_id);
        $milestones->title = $request->title;
        $milestones->date = $request->date;
        $milestones->location = $request->location;
        $milestones->save();

        $milestone = Milestone::find($id);
        $milestone->milestone = $request->title;
        $milestone->save();

        if($milestones){
            return Response::json([
                'error_code' => '1004',
                'status' => '201',
                'message' => 'Milestone updated successfully'
            ], 201);
        }else{
            return Response::json([
                'error_code' => '1001',
                'status' => '401',
                'message' => 'Milestone has been not updated'
            ], 401);
        }
        
    }
    public function delete_milestone_image(Request $request){

        $id = $request->image_id;

        $milestone_image = Milestone_Image::find($id);
        $milestone_image->delete();

        if($milestone_image){
            return Response::json([
                'error_code' => '1004',
                'status' => '201',
                'message' => 'Milestone image deleted successfully'
            ], 201);
        }else{
            return Response::json([
                'error_code' => '1001',
                'status' => '401',
                'message' => 'Milestone image has been not deleted'
            ], 401);
        }
    }
    public function save_note(Request $request){

        $id = $request->milestone_id;

        if($request->share_note_with_partner == 'true'){
            $share_note_with_partner = 1;
        }else{
            $share_note_with_partner = 0;
        }
        if($request->share_note_with_biggestask == 'true'){
            $share_note_with_biggestask = 1;
        }else{
            $share_note_with_biggestask = 0;
        }
        if($request->surrogate_share_note_with_biggestask == 'true'){
            $surrogate_share_note_with_biggestask = 1;
        }else{
            $surrogate_share_note_with_biggestask = 0;
        }

        if($request->type == 'parent'){
            $milestones = MilestoneUser::find($id);
            $milestones->parent_note = $request->note;
            $milestones->share_note_with_biggestask_status = $share_note_with_biggestask;
            $milestones->save();
        }else{
            $milestones = MilestoneUser::find($id);
            $milestones->surrogate_note = $request->note;
            $milestones->share_note_with_partner_status = $share_note_with_partner;
            $milestones->surrogate_share_note_with_biggestask_status = $surrogate_share_note_with_biggestask;
            $milestones->save();
        }

        if($milestones){
            return Response::json([
                'status' => '201',
                'message' => 'Note saved successfully'
            ], 201);
        }else{
            return Response::json([
                'error_code' => '1001', 
                'status' => '401',
                'message' => 'Note has been not saved'
            ], 401);
        }
    }
    
    // ************************************* For surrogate milestone ***************************************

    public function get_surrogate_milestone(Request $request){
        $id = $request->user_id;
        $milestone = $user = DB::table('milestone_users')
            ->join('milestones','milestone_users.milestone_id','=', 'milestones.id')
            ->where('milestone_users.surrogate_id', '=', $id)
            ->get();
            
        if($milestone){
            return json_encode($milestone);
        }else{
            return Response::json([
                'error_code' => '1005',
                'status' => '404',
                'message' => 'Record not found'
            ], 404);
        }
    }
    
    // ********************************** For reset all milestone ******************************************
   public function reset_milsestone(Request $request){
        $type = $request->type;
        $user_id = $request->user_id;
        $milestone_id = $request->milestone_id;
        if($milestone_id){
            if($type == 'parent'){
                $milestone = MilestoneUser::where('parent_id',$user_id)->whereIn('id',$milestone_id)->update([
                    'share_note_with_biggestask_status'=>0,
                    'parent_note'=>'',
                    'date'=>'',
                    'date_status'=>0,
                    'location'=>'',
                    'longitude'=>'',
                    'latitude'=>''
                ]);
                $image = Milestone_Image::where('milestone_user_id',$milestone_id);
                $image->delete();
            }else if($type == 'surrogate'){
                $milestone = MilestoneUser::where('surrogate_id',$user_id)->whereIn('id',$milestone_id)->update([
                    'share_note_with_partner_status'=>0,
                    'surrogate_share_note_with_biggestask_status'=>0,
                    'surrogate_note'=>'',
                    'date_status'=>0,
                    'date'=>'',
                    'location'=>'',
                    'longitude'=>'',
                    'latitude'=>''
                ]);
                $image = Milestone_Image::where('milestone_user_id',$milestone_id);
                $image->delete();
            }
        }else{
            if($type == 'parent'){
                $milestone = MilestoneUser::where('parent_id',$user_id)->where('type','common')->update([
                    'share_note_with_biggestask_status'=>0,
                    'parent_note'=>'',
                    'date'=>'',
                    'date_status'=>0,
                    'location'=>'',
                    'longitude'=>'',
                    'latitude'=>''
                ]);
                $milestone = MilestoneUser::where('parent_id',$user_id)->where('type','!=','common')->delete();
                $image = Milestone_Image::where('milestone_user_id',$milestone_id);
                $image->delete();
            }else if($type == 'surrogate'){
                $milestone = MilestoneUser::where('surrogate_id',$user_id)->where('type','common')->update([
                    'share_note_with_partner_status'=>0,
                    'surrogate_share_note_with_biggestask_status'=>0,
                    'surrogate_note'=>'',
                    'date_status'=>0,
                    'date'=>'',
                    'location'=>'',
                    'longitude'=>'',
                    'latitude'=>''
                ]);
                $milestone = MilestoneUser::where('surrogate_id',$user_id)->where('type','!=','common')->delete();
                $image = Milestone_Image::where('milestone_user_id',$milestone_id);
                $image->delete();
            }
        }
        
        // $type = $request->type;
        // $user_id = $request->user_id;

        if($type == 'parent'){
            $user = App_User::find($user_id);
            $payment = $user->is_payment_done;
            $partner_id = $user->parent_partner_id;
            $image = $user->parent_image1;
            
            if($payment == 0){
                $statuss = 'payment_not_done';
                $partner_id = NULL;
            }else{
                $is_frequency = Admin_question_status::where('type','parent')->where('user_id',$user_id)->get();
                if(count($is_frequency)>0)
                {
                   
                    if($partner_id != ''){
                        $is_date_add = MilestoneUser::where('parent_id',$user_id)->where('milestone_id',2)->get();
                        $date_of_milestone = $is_date_add[0]['date'];
                        if($date_of_milestone){
                            $statuss = '';
                        }else{
                            $statuss = 'milestone_date_not_added';
                        }
                    }else{
                        $statuss = 'partner_not_assign';
                        $partner_id = NULL;
                    }
                }else{
                    $statuss = 'frequency_not_added';
                    $partner_id = NULL;
                }
            }
        }else{
                $user = App_User_surrogate::find($user_id);
                $partner_id = $user->partner_id;
                $image = $user->image1;
                $is_frequency = Admin_question_status::where('type','surrogate')->where('user_id',$user_id)->get();
                
                if(count($is_frequency)>0)
                {
                    if($partner_id != ''){
                        $is_date_add = MilestoneUser::where('surrogate_id',$user_id)->where('milestone_id',2)->get();
                        
                        $date_of_milestone = $is_date_add[0]['date'];
                        
                        if($date_of_milestone){
                            $statuss = '';
                        }else{
                            $statuss = 'milestone_date_not_added';
                        }
                    }else{
                        $statuss = 'partner_not_assign';
                        $partner_id = NULL;
                    }
                }else{
                    $statuss = 'frequency_not_added';
                    $partner_id = NULL;
                }
        }
        if($statuss == ''){
            $status = 'on_boarding';
        }else{
            $status = $statuss;
        }
        $pregnancy_milestone_status = Pregnancy_Milestone_Status::where('type',$type)->where('user_id',$user_id)->pluck('status');
        if(count($pregnancy_milestone_status)>0){
            $pregnancy_milestone_status333 = $pregnancy_milestone_status[0];
        }else{
            $pregnancy_milestone_status333 = null;
        }
        
        if($milestone){
            return Response::json([ 
                'message' => 'Milestone reset successfully',
                'status' => $status,
                'partner_id' => $partner_id,
                'image' => $image,
                'pregnancy_milestone_status' => $pregnancy_milestone_status333
            ], 200);
        }else{
            return Response::json([ 
                'message' => 'Milestone reset successfully',
                'status' => $status,
                'partner_id' => $partner_id,
                'image' => $image,
                'pregnancy_milestone_status' => $pregnancy_milestone_status333
            ], 200);
        }
    }
    // ******************************* For connect parent to surrogate *************************************
    public function invite_surrogate(Request $request,$id){
        
        if($request->type == 'parent'){
            $user = App_User_surrogate::where('email',$request->email)->where('status','active')->get();
            if(count($user)>0){
                $surrogate_id = $user[0]['id'];
                if($user[0]['partner_id']){
                    return Response::json([ 
                        'error_code' => '1003',
                        'status' => '409',
                        'message' => 'surrogate and parent are already connected'
                    ], 200);
                    exit;
                }
            }else{
                return Response::json([ 
                    'error_code' => '1005',
                    'status' => '404',
                    'message' => 'No surrogate found'
                ], 404);
                exit;
            }
            
        }else{
            $user = App_User::where('parent_email',$request->email)->where('parent_status','active')->get();
            $parent_id = $user[0]['id'];
        }
        
        if($request->type == 'parent'){
            $adminquestion1 = Admin_Question_Ans::where('user_id',$id)->where('type','parent')->update(["partner_id" => $surrogate_id]);
        }else{
            $adminquestion1 = Admin_Question_Ans::where('user_id',$id)->where('type','surrogate')->update(["partner_id" => $parent_id]);
        }

        if(count($user)>0){
            $surrogate_id = $user[0]['id'];
            $parent = App_User::find($id);
            $parent->parent_partner_id = $surrogate_id;
            $parent->save();

            $surrogate = App_User_surrogate::find($surrogate_id);
            $surrogate->partner_id = $id;
            $surrogate->save();

            $parent_id = $id; // This is a parent id
            $surrogate_id = $surrogate_id; // This is a surrogate id

            $array_one = MilestoneUser::where('parent_id',$parent_id)->where('surrogate_id',$surrogate_id)->get('milestone_id');
            
            $items = array();
            foreach($array_one as $i => $username) {
                array_push($items,$username->milestone_id);
            }
            for($i=1; $i <= 8; $i++) {
                if(in_array($i, $items)){
                    $status = 'true';
                }else{
                    $status = 'false';
                }
            }
            if($status == 'false'){
                $milestones = Milestone::where('user_type','common')->get();
                
                foreach ($milestones as $key => $milestone) {
                    $mile = new MilestoneUser;
                    $mile->parent_id = $id;
                    $mile->surrogate_id = $surrogate_id;
                    $mile->milestone_id = $milestone->id;
                    $mile->title = $milestone->milestone;
                    $mile->milestone_image = $milestone->image;
                    $mile->type = 'common';
                    $mile->save();  
                }
                $milestatus = new Pregnancy_Milestone_Status;
                $milestatus->user_id = $id;
                $milestatus->type = 'parent';
                $milestatus->status = 'active';
                $milestatus->save();

                $milestatus = new Pregnancy_Milestone_Status;
                $milestatus->user_id = $surrogate_id;
                $milestatus->type = 'surrogate';
                $milestatus->status = 'active';
                $milestatus->save();
            }
            
            $surrogate_email = $user[0]['email'];

            $surrogate_name = $user[0]['name'];
            
            $parent_name = $parent->parent_name;
            
            if($surrogate){
            
            ini_set("mail.log", "/tmp/mail.log");

            ini_set("mail.add_x_header", TRUE);

            $to         = $surrogate_email;
    
            $subject    = "We want to connect with you";
    
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

                                            <h1 style="font-size: 48px; font-weight: 400; margin: 2; color:#824538;">Biggestask app</h1> <img src=" https://img.icons8.com/clouds/100/000000/handshake.png" width="125" height="120" style="display: block; border: 0px;" />

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

                                                            <h4>Hello, I am '.$parent_name.'. we want to connect with you.</h4>

                                                            <h4>Congratulations, '.$parent_name.' and '.$surrogate_name.' are now connected via The Biggest Ask app.</h4>

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
        
        return Response::json([
            'status' => '200',
            'partner_id' => $surrogate_id,
            'message' => 'Parent & surrogate connected successfully'
        ], 200);
            
        }

        }else{
            return Response::json([ 
                'error_code' => '1005',
                'status' => '404',
                'message' => 'Email has been not match'
            ], 200);
        }
    }
    // ********************************* get question scree and month wise **************************************
    // Get question for question screen
    public function get_qestion_screen_question(Request $request){
        $type = $request->type;
        $user_id = $request->user_id;

        $que_ans = DB::table('admin__question__ans')
            ->join('admin__questions','admin__question__ans.question_id','=', 'admin__questions.id')
            ->select('admin__question__ans.type','admin__question__ans.user_id','admin__question__ans.user_name','admin__question__ans.answer','admin__question__ans.created_at','admin__questions.question')
            ->where('admin__question__ans.type', '=', $type)
            ->where('admin__question__ans.user_id', '=', $user_id)
            ->get();
       
        if($que_ans){
            $days = array();
            $current_date = Carbon::parse(date('Y-m-d', strtotime(now())));
            foreach($que_ans as $day_num){
                $created_at = Carbon::parse(date('Y-m-d', strtotime($day_num->created_at)));
                $shift_difference = $current_date->diffInDays($created_at);
                array_push($days,$shift_difference);
            }
        }
        if($que_ans){
            return Response::json([
                'data' => $que_ans,
                'days' => $days
            ], 200);
        }else{
            return Response::json([
                'error_code' => '1005',
                'status' => '404',
                'message' => 'Your partner did not gave any answer'
            ], 404);
        }    
    }
    public function screen_question_status(Request $request){
        
        $validator = Validator::make(request()->all(), [

            'question_type'=>'required',

            'user_id'=>'required',

            'type'=>'required'

        ]);
        
        if ($validator->fails()) {
            return Response::json([
                'error_code' => '1007',
                'status' => '422',
                'message' => 'All field are requeired'
            ], 422);
        }else{
            
            $check_user = Admin_question_status::where('type',$request->type)->where('user_id',$request->user_id)->get();
            
            if(count($check_user)>0){
                $id = $check_user[0]['id'];
                $question = Admin_question_status::find($id);
                $question->type = $request->type;
                $question->user_id = $request->user_id;
                $question->ques_type = $request->question_type;
                $question->save();
            }else{
                $question = new Admin_question_status;
                $question->type = $request->type;
                $question->user_id = $request->user_id;
                $question->ques_type = $request->question_type;
                $question->save();
            }
            
            if($question){
                return Response::json([
                    'error_code' => '1004',
                    'status' => '201',
                    'message' => 'Question status store successfully'
                ], 201);
            }else{
                return Response::json([
                    'error_code' => '1001',
                    'status' => '401',
                    'message' => 'Question status store request fail'
                ], 401);
            }
        }
    }
    public function get_frequency(Request $request){
        $user_id = $request->user_id;
        $type = $request->type;

        $frequency = Admin_question_status::where('type',$type)->where('user_id',$user_id)->get();
        if($frequency){
            return Response::json([
                'data' => $frequency
            ], 200);
        }else{
            return Response::json([
                'error_code' => '1005',
                'status' => '404',
                'message' => 'Data not found'
            ], 404);
        }
    }
    public function store_question_ans(Request $request){
       
        $questionnum = count($request->answer);
        for($i=0;$i<$questionnum;$i++){
            $ans = new Admin_Question_Ans;
            $ans->type = $request->type;
            $ans->user_id = $request->user_id;
            $ans->user_name = $request->user_name;
            $ans->partner_id = $request->partner_id;
            $ans->category_id = $request->category_id;
            $ans->question_id = $request->answer[$i]['question_id'];
            $ans->answer = $request->answer[$i]['answer'];
            $ans->save();
        }   

        if($ans){
            return Response::json([
                'error_code' => '1004',
                'status' => '201',
                'message' => 'Answer store successfully'
            ], 201);
        }else{
            return Response::json([
                'error_code' => '1001',
                'status' => '401',
                'message' => 'Answer store fail'
            ], 401);
        }
    }
    
    public function get_home_screen_question(){

        $user_id = $_GET['user_id'];
        $type = $_GET['type'];
        $milestone_id = 2;
        
        $users_name = array();
        if($type == 'parent'){
            $user_name = App_User::find($user_id,['parent_name','parent_partner_name']);
            array_push($users_name,$user_name->parent_name);
            array_push($users_name,$user_name->parent_partner_name);
        }else{
            $user_name = App_User_surrogate::find($user_id,['name']);
            array_push($users_name,$user_name->name);
        }

        if($type == 'parent'){
            $milestone = MilestoneUser::where('parent_id',$user_id)->where('milestone_id',$milestone_id)->get();
            
        }else{
            $milestone = MilestoneUser::where('surrogate_id',$user_id)->where('milestone_id',$milestone_id)->get();
        }
    if($milestone->count()){
        $milestone_dates = $milestone[0]['date'];
    
        if($milestone_dates){
            
            $milestone_date = Carbon::parse($milestone_dates);
            $current_date = Carbon::parse(now())->format('Y/m/d');
            $month_count = $milestone_date->diffInDays($current_date)/30;
            
            if($month_count <= 1){
                $month = 1;
            }else if($month_count <= 2){
                $month = 2;
            }else if($month_count <= 3){
                $month = 3;
            }else if($month_count <= 4){
                $month = 4;
            }else if($month_count <= 5){
                $month = 5;
            }else if($month_count <= 6){
                $month = 6;
            }else if($month_count <= 7){
                $month = 7;
            }else if($month_count <= 8){
                $month = 8;
            }else if($month_count <= 9){
                $month = 9;
            }
            
            $check_ans = Admin_Question_Ans::where('user_id',$user_id)->where('type',$type)->where('category_id',$month)->get('question_id');
            $done_ans = array();
            foreach($check_ans as $ansid){
                array_push($done_ans,$ansid->question_id);
            }
            
                $check_question = Admin_Question::where('category_id',$month)->get('id');
                $panding_ans = array();
                foreach($check_question as $ansid1){
                    array_push($panding_ans,$ansid1->id);
                }
                
                $arrayval = array_diff($panding_ans, $done_ans);
                
               
                $check_ans1 = Admin_Question_Ans::where('user_id',$user_id)->where('type',$type)->where('category_id',$month)->orderBy('id','DESC')->get('created_at');
            
                if(count($check_ans1)>0){
                    $ans_date = $check_ans1[0]['created_at']; 
                    $current_dates = Carbon::parse(now())->format('Y/m/d');
                    $month_count1 = $ans_date->diffInDays($current_dates)+1;
                }else{
                    $month_count1 = 0;
                }
                $que_send = Admin_question_status::where('type',$type)->where('user_id',$user_id)->get('ques_type');
                
            if(($que_send)->count()){
                
                 $que_send_type = $que_send[0]['ques_type'];
                $status = false;
                if($que_send_type == 'everyday' && $month_count1 >= 1){
                    $status = true;
                }else if($que_send_type == 'every_3_day' && $month_count1 >= 3){
                    $status = true;
                }else if($que_send_type == 'every_week' && $month_count1 >= 7){
                    $status = true;
                }else if($month_count1 == 0)
                {
                    $status = true;
                }
                if($status == true){
                    if(count($arrayval)>0)
                    {
                        $result = array();
                        foreach($arrayval as $num){
                            array_push($result,$num);
                        }
                        $que_id = $result[0];
                    
                        if($que_id){
                            $finalque = Admin_Question::find($que_id);
                            return Response::json([
                                'status' => '200',
                                'data' => $finalque,
                                'user_name' => $users_name
                            ], 200);
                        }
                    
                    }else{
                        return Response::json([
                            'error_code' => '1002', 
                            'status' => '200',
                            'message' => "Recently you don't have any question to answer"
                        ], 200);
                    }
                }else{
                    return Response::json([
                        'error_code' => '1002', 
                        'status' => '200',
                        'message' => 'Check your embryo transfer day and your question frequency'
                    ], 200);
                }
                
            }else{
                return Response::json([
                    'error_code' => '1005',
                    'status' => '404',
                    'message' => 'Frequency are not selected'
                ], 404);
            }
            
            
        }else{
            return Response::json([
                'error_code' => '1005',
                'status' => '404',
                'message' => 'Enter milestone date of Embryo Transfer Day'
            ], 404);
        }
    }else{
        return Response::json([
            'error_code' => '1005',
            'status' => '404',
            'message' => 'Surrogate and parent are not connected'
        ], 404);
    }
                
    }
    
    public function intended_partner_que_ans(){
        $user_id = $_GET['partner_id'];
        $partner_id = $_GET['user_id'];
        $type = $_GET['type'];

        if($_GET['type'] == 'parent'){
            $type = 'surrogate';
        }else{
            $type = 'parent';
        }

        if($type == 'parent'){
            $user = App_User::find($user_id);
            $user_name = $user->parent_name;
        }else{
            $user = App_User_surrogate::find($user_id);
            $user_name = $user->name;
        }
        
        $question = DB::table('admin__question__ans')
                ->Join('admin__questions','admin__question__ans.question_id','=', 'admin__questions.id')
                ->select('admin__question__ans.answer','admin__questions.question','admin__question__ans.created_at')
                ->where('admin__question__ans.type', '=', $type)
                ->where('admin__question__ans.user_id', '=', $user_id)
                ->where('admin__question__ans.partner_id', '=', $partner_id)
                ->limit(1)
                ->latest('admin__question__ans.question_id')
                ->first();
        if($question){
            $current_date = Carbon::parse(date('Y-m-d', strtotime(now())));
            $created_at = Carbon::parse(date('Y-m-d', strtotime($question->created_at)));
            $shift_difference = $current_date->diffInDays($created_at);
        }
        if($question){
            return Response::json([
                'data' => $question,
                'user_name' => $user_name,
                'day' => $shift_difference
            ], 200);
        }else{
            return Response::json([
                'error_code' => '1005',
                'status' => '404',
                'message' => 'Your partner did not gave any answer'
            ], 404);
        }
        
    }
    public function get_nearest_milestone(){
        $user_id = $_GET['user_id'];
        $type = $_GET['type'];
        $current_date = Carbon::parse(now())->format('Y/m/d');
        $partner_id = $_GET['partner_id'];
      
        if($type == 'parent'){
            $milestone = MilestoneUser::where('parent_id',$user_id)
            ->get(['milestone_id','date','title','milestone_image']);
            foreach($milestone as $mile){
                if($mile->date == NULL || $mile->date >= Carbon::parse(now())->format('Y/m/d')){
                    $milestone_id = $mile->milestone_id;
                    $check = Notification::where('type','surrogate')->where('milestone_id',$milestone_id)->where('user_id',$partner_id)->get();
                    if(count($check)>0){
                        $state = true;
                    }else{
                        $state = false;
                    }
                    $mile_stone = array
                    (
                        'nearest_milestone' => $mile,
                        'state' => $state,
                    );
                    return $mile_stone;
                    exit;
                }
            }
            exit;
        }else{
            $milestone = MilestoneUser::where('surrogate_id',$user_id)
            ->get(['milestone_id','date','title','milestone_image']);
            foreach($milestone as $mile){
                if($mile->date == NULL || $mile->date >= Carbon::parse(now())->format('Y/m/d')){
                    $milestone_id = $mile->milestone_id;
                    $check = Notification::where('type','parent')->where('milestone_id',$milestone_id)->where('user_id',$partner_id)->get();
                    if(count($check)>0){
                        $state = true;
                    }else{
                        $state = false;
                    }
                    $mile_stone = array
                    (
                        'nearest_milestone' => $mile,
                        'state' => $state,
                    );
                    return $mile_stone;
                    exit;
                }
            }
            exit;
        }
        
    }
    public function ask_surrogate(Request $request){
        // return $request;
        // exit;
        $id = $request->user_id;
        $user = App_User_surrogate::where('partner_id',$id)->get();
        
        $tokens = [];
        $tokens[] = App_User_surrogate::where('partner_id',$id)->where('status','active')->pluck('fcm_token')->all();
        $tok = json_encode($tokens);
        $serverKey = 'AAAA0Dilu7Q:APA91bGielTS1lx_aava8vUVRaj5Bo5pBrxY_zmzvdGv86jsvtOBfzHGHvb6YyneZRNyNeAwh9r1VvVkHUB-LpRS4366yaLqS_a3x5vSmN5bMYCuKSdppH_mrGNC42ic32JhbPWoJLHm';

        $partner_id = $user[0]['id'];
        $type = 'surrogate';
        $title = $request->title;
        $notification_text = 'Please, Add the next milestone date';

        $notification = new Notification;
        $notification->type = $type;
        $notification->user_id = $partner_id;
        $notification->milestone_id = $request->milestone_id;
        $notification->fcm_token = $tok;
        $notification->date = Carbon::parse(now())->format('Y-m-d');
        $notification->title = $title;
        $notification->notification = $notification_text;
        $notification->save();

        if($notification){
            $msg = array
            (
                'message' => $notification_text,
                'milestone_id' => $notification->id,
            );
    
            $notifyData = [
                "body" => $notification_text,
                "title" => $title
            ];
    
            $registrationIds = $tokens[0];
    
            if(count($tokens) > 1){
                $fields = array
                (
                    'registration_ids' => $registrationIds,
                    'notification' => $notifyData,
                    'data' => $msg,
                    'priority' => 'high'
                );
            }else{
                $fields = array
                (
                    'to' => $registrationIds[0],
                    'notification' => $notifyData,
                    'data' => $msg,
                    'priority' => 'high'
                );
            }
            $headers = array
                (
                    'Authorization: key=' . $serverKey,
                    'Content-Type: application/json'
                );
            //#Send Reponse To FireBase Server
            $ch = curl_init();
            curl_setopt( $ch,CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send' );
            curl_setopt( $ch,CURLOPT_POST, true );
            curl_setopt( $ch,CURLOPT_HTTPHEADER, $headers );
            curl_setopt( $ch,CURLOPT_RETURNTRANSFER, true );
            curl_setopt( $ch,CURLOPT_SSL_VERIFYPEER, false );
            curl_setopt( $ch,CURLOPT_POSTFIELDS, json_encode( $fields ) );
            $result = curl_exec($ch );
            // dd($result);
            curl_close( $ch );
            return Response::json([
                'status' => '201',
                'message' => 'Notification send successfully'
            ], 201); 
        }else{
            return Response::json([
                'error_code' => '1001',
                'status' => '401',
                'message' => 'Notification has been not send'
            ], 401);
        }
        
    }
        public function get_important_question(Request $request){
            $type = $request->type;
            $user_id = $request->user_id;
             
            if($type == 'surrogate'){
                $current_date = now()->format('Y/m/d');
                $milestoneUser = MilestoneUser::has('milestone.questions')
                    ->where('surrogate_id',$user_id)
                    ->where(function($query) {
                        $query->whereDate('date', now()->addDays(-1)->format('Y/m/d'))
                            ->orWhereDate('date', now()->addDays(-14)->format('Y/m/d'))
                            ->orWhereDate('date', now()->addDays(1)->format('Y/m/d'));
                    })
                    ->first();
                $question = null;
                if($milestoneUser) {
                    if($milestoneUser->date == now()->addDays(-14)->format('Y/m/d')) {
                        $question = $milestoneUser->milestone->questions()->latest()->first();
                    } else {
                        $question = $milestoneUser->milestone->questions()->first();
                    }
                }
                if($question){
                    $alert_que_ans = Alert_Question_ans::where('user_id',$user_id)->where('question_id',$question->id)->get();
                    if(count($alert_que_ans)>0){
                    }else{
                        $ans = new Alert_Question_ans;
                        $ans->user_id = $user_id;
                        $ans->question_id = $question->id;
                        $ans->question = $question->question;
                        $ans->save();
                    }
                }
                $alert_que_ans = Alert_Question_ans::where('user_id',$user_id)->where('answer',NULL)->first();
                
                if($alert_que_ans){
                    $alert_que_ans_question = $alert_que_ans;
                }else{
                    $alert_que_ans_question = NULL;
                }
            }else{
                $alert_que_ans_question = NULL;
            }
           
            // ******************************** Start for show pregnency milestone ***********************************
            $user_id = $_GET['user_id'];
            $type = $_GET['type'];
            $milestone_id = 2;
    
            $user_status = Pregnancy_Milestone_Status::where('user_id',$user_id)->where('type',$type)->get();
            
            $status = $user_status[0]['status'];
            
            if($status == 'active'){
                
                if($type == 'parent'){
                    $milestone = MilestoneUser::where('parent_id',$user_id)->where('milestone_id',$milestone_id)->get();
                    if(count($milestone)>0)
                    {
                        
                    }else{
                        return Response::json([
                            'error_code' => '1007',
                            'status' => '422',
                            'message' => 'Parent are not connected to any surrogate'
                        ], 422);
                        exit;
                    }
                    $milestone_dates = $milestone[0]['date'];
                    
                }else{
                    $milestone = MilestoneUser::where('surrogate_id',$user_id)->where('milestone_id',$milestone_id)->get();
                    $milestone_dates = $milestone[0]['date'];
                }
                    if($milestone_dates){
                        $milestone_date = Carbon::parse($milestone_dates);
                        $current_date = Carbon::parse(now());
                        $daydiff = $milestone_date->diffInDays($current_date)/7;
                    
                   
                    
                        if($daydiff <= 1)
                        {
                            $week = 1; //echo 'week 4';
                        }elseif ($daydiff > 1 && $daydiff <= 2) {
                            $week = 2; //echo 'week 5';
                        }elseif ($daydiff > 2 && $daydiff <= 3) {
                            $week = 3; //echo 'week 6';
                        }elseif ($daydiff > 3 && $daydiff <= 4) {
                            $week = 4; //echo 'week 7';
                        }elseif ($daydiff > 4 && $daydiff <= 5) {
                            $week = 5; //echo 'week 8';
                        }elseif ($daydiff > 5 && $daydiff <= 6) {
                            $week = 6; //echo 'week 9';
                        }elseif ($daydiff > 6 && $daydiff <= 7) {
                            $week = 7; //echo 'week 10';
                        }elseif ($daydiff > 7 && $daydiff <= 8) {
                            $week = 8; //echo 'week 11';
                        }elseif ($daydiff > 8 && $daydiff <= 9) {
                            $week = 9; //echo 'week 12';
                        }elseif ($daydiff > 9 && $daydiff <= 10) {
                            $week = 10; //echo 'week 13';
                        }elseif ($daydiff > 10 && $daydiff <= 11) {
                            $week = 11; //echo 'week 14';
                        }elseif ($daydiff > 11 && $daydiff <= 12) {
                            $week = 12; //echo 'week 15';
                        }elseif ($daydiff > 12 && $daydiff <= 13) {
                            $week = 13; //echo 'week 16';
                        }elseif ($daydiff > 13 && $daydiff <= 14) {
                            $week = 14; //echo 'week 17';
                        }elseif ($daydiff > 14 && $daydiff <= 15) {
                            $week = 15; //echo 'week 18';
                        }elseif ($daydiff > 15 && $daydiff <= 16) {
                            $week = 16; //echo 'week 19';
                        }elseif ($daydiff > 16 && $daydiff <= 17) {
                            $week = 17; //echo 'week 20';
                        }elseif ($daydiff > 17 && $daydiff <= 18) {
                            $week = 18; //echo 'week 21';
                        }elseif ($daydiff > 18 && $daydiff <= 19) {
                            $week = 19; //echo 'week 22';
                        }elseif ($daydiff > 19 && $daydiff <= 20) {
                            $week = 20; //echo 'week 23';
                        }elseif ($daydiff > 20 && $daydiff <= 21) {
                            $week = 21; //echo 'week 24';
                        }elseif ($daydiff > 21 && $daydiff <= 22) {
                            $week = 22; //echo 'week 25';
                        }elseif ($daydiff > 22 && $daydiff <= 23) {
                            $week = 23; //echo 'week 26';
                        }elseif ($daydiff > 23 && $daydiff <= 24) {
                            $week = 24; //echo 'week 27';
                        }elseif ($daydiff > 24 && $daydiff <= 25) {
                            $week = 25; //echo 'week 28';
                        }elseif ($daydiff > 25 && $daydiff <= 26) {
                            $week = 26; //echo 'week 29';
                        }elseif ($daydiff > 26 && $daydiff <= 27) {
                            $week = 27; //echo 'week 30';
                        }elseif ($daydiff > 27 && $daydiff <= 28) {
                            $week = 28; //echo 'week 31';
                        }elseif ($daydiff > 28 && $daydiff <= 29) {
                            $week = 29; //echo 'week 32';
                        }elseif ($daydiff > 29 && $daydiff <= 30) {
                            $week = 30; //echo 'week 33';
                        }elseif ($daydiff > 30 && $daydiff <= 31) {
                            $week = 31; //echo 'week 34';
                        }elseif ($daydiff > 31 && $daydiff <= 32) {
                            $week = 32; //echo 'week 35';
                        }elseif ($daydiff > 32 && $daydiff <= 33) {
                            $week = 33; //echo 'week 36';
                        }elseif ($daydiff > 33 && $daydiff <= 34) {
                            $week = 34; //echo 'week 37';
                        }elseif ($daydiff > 34 && $daydiff <= 35) {
                            $week = 35; //echo 'week 38';
                        }elseif ($daydiff > 35 && $daydiff <= 36) {
                            $week = 36; //echo 'week 39';
                        }elseif ($daydiff > 36 && $daydiff <= 37) {
                            $week = 37; //echo 'week 40';
                        }
                        
                        $preg_milestone = Pregnancy_Milestone::find($week);
                        
                    }else{
                        $preg_milestone = NULL;
                    }
            }else{
                return Response::json([
                    'error_code' => '1008',
                    'status' => '403',
                    'message' => 'User status inactive'
                ], 403);
            }
            
            $users_name = array();
            if($type == 'parent'){
                $user_name = App_User::find($user_id,['parent_name','parent_partner_name']);
                array_push($users_name,$user_name->parent_name);
                array_push($users_name,$user_name->parent_partner_name);
            }else{
                $user_name = App_User_surrogate::find($user_id,['name']);
                array_push($users_name,$user_name->name);
            }
            
            if($preg_milestone || $alert_que_ans_question){
                return Response::json([
                    'status' => '200',
                    'question' => $alert_que_ans_question,
                    'pregnancy_milestone' => $preg_milestone,
                    'user_name' => $users_name
                ], 200); 
            }else{
                return Response::json([
                    'error_code' => '1005',
                    'status' => '404',
                    'message' => 'Data not found'
                ], 404);
            }
    }
    public function store_ans_important_question(Request $request){
        $id = $request->question_id;
        $ans = Alert_Question_ans::find($id);
        $ans->answer = $request->answer;
        $ans->user_name = $request->user_name;
        $ans->update();
        if($ans){
            return Response::json([
                'status' => '201',
                'message' => 'Answer stored successfully'
            ], 201);
        }else{
            return Response::json([
                'error_code' => '1001',
                'status' => '401',
                'message' => 'Answer has been not stored'
            ], 401);
        }
    }
    // **************************************** pregnancy milestone ***********************************
    public function get_pregnancy_milestone(Request $request){
       
        $user_id = $request->user_id;
        $type = $request->type;
        $milestone_id = 2;

        $user_status = Pregnancy_Milestone_Status::where('user_id',$user_id)->where('type',$type)->get();
        
        $status = $user_status[0]['status'];
         
        
        if($status == 'active'){
            if($type == 'parent'){
                $milestone = MilestoneUser::where('parent_id',$user_id)->where('milestone_id',$milestone_id)->get();
                $milestone_dates = $milestone[0]['date'];
            }else{
                $milestone = MilestoneUser::where('surrogate_id',$user_id)->where('milestone_id',$milestone_id)->get();
                $milestone_dates = $milestone[0]['date'];
            }
                $milestone_date = Carbon::parse($milestone_dates);
                $current_date = Carbon::parse(now())->format('Y/m/d');
                $daydiff = $milestone_date->diffInDays($current_date)/7;
              
                
                if($daydiff < 1)
                {
                    $week = 1; //echo 'week 4';
                }elseif ($daydiff > 1 && $daydiff <= 2) {
                    $week = 2; //echo 'week 5';
                }elseif ($daydiff > 2 && $daydiff <= 3) {
                    $week = 3; //echo 'week 6';
                }elseif ($daydiff > 3 && $daydiff <= 4) {
                    $week = 4; //echo 'week 7';
                }elseif ($daydiff > 4 && $daydiff <= 5) {
                    $week = 5; //echo 'week 8';
                }elseif ($daydiff > 5 && $daydiff <= 6) {
                    $week = 6; //echo 'week 9';
                }elseif ($daydiff > 6 && $daydiff <= 7) {
                    $week = 7; //echo 'week 10';
                }elseif ($daydiff > 7 && $daydiff <= 8) {
                    $week = 8; //echo 'week 11';
                }elseif ($daydiff > 8 && $daydiff <= 9) {
                    $week = 9; //echo 'week 12';
                }elseif ($daydiff > 9 && $daydiff <= 10) {
                    $week = 10; //echo 'week 13';
                }elseif ($daydiff > 10 && $daydiff <= 11) {
                    $week = 11; //echo 'week 14';
                }elseif ($daydiff > 11 && $daydiff <= 12) {
                    $week = 12; //echo 'week 15';
                }elseif ($daydiff > 12 && $daydiff <= 13) {
                    $week = 13; //echo 'week 16';
                }elseif ($daydiff > 13 && $daydiff <= 14) {
                    $week = 14; //echo 'week 17';
                }elseif ($daydiff > 14 && $daydiff <= 15) {
                    $week = 15; //echo 'week 18';
                }elseif ($daydiff > 15 && $daydiff <= 16) {
                    $week = 16; //echo 'week 19';
                }elseif ($daydiff > 16 && $daydiff <= 17) {
                    $week = 17; //echo 'week 20';
                }elseif ($daydiff > 17 && $daydiff <= 18) {
                    $week = 18; //echo 'week 21';
                }elseif ($daydiff > 18 && $daydiff <= 19) {
                    $week = 19; //echo 'week 22';
                }elseif ($daydiff > 19 && $daydiff <= 20) {
                    $week = 20; //echo 'week 23';
                }elseif ($daydiff > 20 && $daydiff <= 21) {
                    $week = 21; //echo 'week 24';
                }elseif ($daydiff > 21 && $daydiff <= 22) {
                    $week = 22; //echo 'week 25';
                }elseif ($daydiff > 22 && $daydiff <= 23) {
                    $week = 23; //echo 'week 26';
                }elseif ($daydiff > 23 && $daydiff <= 24) {
                    $week = 24; //echo 'week 27';
                }elseif ($daydiff > 24 && $daydiff <= 25) {
                    $week = 25; //echo 'week 28';
                }elseif ($daydiff > 25 && $daydiff <= 26) {
                    $week = 26; //echo 'week 29';
                }elseif ($daydiff > 26 && $daydiff <= 27) {
                    $week = 27; //echo 'week 30';
                }elseif ($daydiff > 27 && $daydiff <= 28) {
                    $week = 28; //echo 'week 31';
                }elseif ($daydiff > 28 && $daydiff <= 29) {
                    $week = 29; //echo 'week 32';
                }elseif ($daydiff > 29 && $daydiff <= 30) {
                    $week = 30; //echo 'week 33';
                }elseif ($daydiff > 30 && $daydiff <= 31) {
                    $week = 31; //echo 'week 34';
                }elseif ($daydiff > 31 && $daydiff <= 32) {
                    $week = 32; //echo 'week 35';
                }elseif ($daydiff > 32 && $daydiff <= 33) {
                    $week = 33; //echo 'week 36';
                }elseif ($daydiff > 33 && $daydiff <= 34) {
                    $week = 34; //echo 'week 37';
                }elseif ($daydiff > 34 && $daydiff <= 35) {
                    $week = 35; //echo 'week 38';
                }elseif ($daydiff > 35 && $daydiff <= 36) {
                    $week = 36; //echo 'week 39';
                }elseif ($daydiff > 36 && $daydiff <= 37) {
                    $week = 37; //echo 'week 40';
                }

                $preg_milestone = Pregnancy_Milestone::find($week);
                echo json_encode($preg_milestone);
        }
    }
    public function pregnancy_milestone_status(Request $request){
       
        $user_id = $request->user_id;
        $type = $request->type;
        $milestone_id = 2;
    
        $user_status = Pregnancy_Milestone_Status::where('user_id',$user_id)->where('type',$type)->get();
        $status = $user_status[0]['status'];
        $id = $user_status[0]['id'];
      
        if($status == 'inactive'){
            if($type == 'parent'){
                $milestone = MilestoneUser::where('parent_id',$user_id)->where('milestone_id',$milestone_id)->get();
                $milestone_date = $milestone[0]['date'];
                if($milestone_date != ''){
                    $milestatus = Pregnancy_Milestone_Status::find($id);
                    $milestatus->status = 'active';
                    $milestatus->save();

                    return Response::json([
                        'error_code' => '1004',
                        'status' => $milestatus->status,
                        'message' => 'Status change successfully'
                    ], 201);

                }else{
                    return Response::json([
                        'error_code' => '1001',
                        'status' => '401',
                        'message' => 'Please add the date of embryo milestone'
                    ], 401);
                }
            }else{
                $milestone = MilestoneUser::where('surrogate_id',$user_id)->where('milestone_id',$milestone_id)->get();
                $milestone_date = $milestone[0]['date'];
                if($milestone_date != ''){
                    $milestatus = Pregnancy_Milestone_Status::find($id);
                    $milestatus->status = 'active';
                    $milestatus->save();

                    return Response::json([
                        'error_code' => '1004',
                        'status' => $milestatus->status,
                        'message' => 'Status change successfully'
                        
                    ], 201);

                }else{
                    return Response::json([
                        'error_code' => '1001',
                        'status' => '401',
                        'message' => 'Please add the date of embryo milestone'
                    ], 401);
                }
            }
        }else{
            $milestatus = Pregnancy_Milestone_Status::find($id);
            $milestatus->status = 'inactive';
            $milestatus->save();

            return Response::json([
                'error_code' => '1004',
                'status' => $milestatus->status,
                'message' => 'Status change successfully'
            ], 201);
        }

    }
    public function get_pregnancy_status(Request $request){
        $user_id = $request->user_id;
        $type = $request->type;

        $status = Pregnancy_Milestone_Status::where('type',$type)->where('user_id',$user_id)->pluck('status');
        if($status){
            return Response::json([
                'status' => $status[0] 
            ], 200);
        }else{
            return Response::json([
                'error_code' => '1005',
                'status' => '404',
                'message' => 'Record not found'
            ], 404);
        }
    }
    // *************************************** Get intro screen api ******************************************
    public function get_intro_info(){
        $info = Introscreen_info::where('info_type','intro_screen')->orderBy('screen', 'ASC')->get();
        return Response::json([
            'data' => $info
        ], 202);
    }
    public function question_bank(){
        $question_bank = Introscreen_info::where('info_type','question_bank')->get();
        
        if($question_bank){
            $data['question_bank'] = $question_bank;
        }else{
            $data['status']     = '0';
            $data['message']  	= 'Record not found';
        }
        echo json_encode($data);
    }
    public function privacy_policy(){
        $privacy_policy_date = Introscreen_info::where('info_type','privacy_policy')->latest('updated_at')->first();
        if($privacy_policy_date){
            $privacy_policy_dates = date("F d,Y", strtotime($privacy_policy_date->updated_at));
        }else{
            $privacy_policy_dates = Null;
        }
        $privacy_policy = Introscreen_info::where('info_type','privacy_policy')->get();
        if($privacy_policy){
            $data['privacy_policy'] = $privacy_policy;
            $data['privacy_policy_date'] = $privacy_policy_dates;
        }else{
            $data['status']     = '0';
            $data['message']  	= 'Record not found';
        }
        echo json_encode($data);
    }
    public function terms_of_service(){
        $terms_of_service_date = Introscreen_info::where('info_type','terms_of_service')->latest('updated_at')->first();
        if($terms_of_service_date){
            $terms_of_service_dates = date("F d,Y", strtotime($terms_of_service_date->updated_at));
        }else{
            $terms_of_service_dates = Null;
        }
        $terms_of_service = Introscreen_info::where('info_type','terms_of_service')->get();

        if($terms_of_service){
            $data['terms_of_service'] = $terms_of_service;
            $data['terms_of_service_date'] = $terms_of_service_dates;
        }else{
            $data['status']     = '0';
            $data['message']  	= 'Record not found';
        }
        echo json_encode($data);
    }
    public function about_app(){
        $about_app_date = Introscreen_info::where('info_type','about_app')->latest('updated_at')->first();
        if($about_app_date){

            $about_app_dates = date("F d,Y", strtotime($about_app_date->updated_at));
        }else{
            $about_app_dates = Null;
        }
        
        $about_app = Introscreen_info::where('info_type','about_app')->get();
        if($about_app){
            $data['about_app'] = $about_app;
            $data['about_app_date'] = $about_app_dates;
        }else{
            $data['status']     = '0';
            $data['message']  	= 'Record not found';
        }
        echo json_encode($data);
    }
    // ****************************************** Check updated status ****************************************
    public function get_updated_status(Request $request){
        $fcm_token = $request->fcm_token;
        if($fcm_token){

        }else{
            return Response::json([
                'message' => 'fcm_token are required'
            ], 200);
            exit;
        }
        $type = $request->type;
        $user_id = $request->user_id;

        if($type == 'parent'){
            
            $data = App_User::find($user_id);
            $data->fcm_token = $fcm_token;
            $data->save();
            
            $user = App_User::find($user_id);
            $payment = $user->is_payment_done;
            $partner_id = $user->parent_partner_id;
            $image = $user->parent_image1;
            $name = $user->parent_name;
            
            if($payment == 0){
                $statuss = 'payment_not_done';
                $partner_id = NULL;
            }else{
                $is_frequency = Admin_question_status::where('type','parent')->where('user_id',$user_id)->get();
                if(count($is_frequency)>0)
                {
                   
                    if($partner_id != ''){
                        $is_date_add = MilestoneUser::where('parent_id',$user_id)->where('milestone_id',2)->get();
                        $date_of_milestone = $is_date_add[0]['date'];
                        if($date_of_milestone){
                            $statuss = '';
                        }else{
                            $statuss = 'milestone_date_not_added';
                        }
                    }else{
                        $statuss = 'partner_not_assign';
                        $partner_id = NULL;
                    }
                }else{
                    $statuss = 'frequency_not_added';
                    $partner_id = NULL;
                }
            }
        }else{
                $user = App_User_surrogate::find($user_id);
                
                $data = App_User_surrogate::find($user_id);
                $data->fcm_token = $fcm_token;
                $data->save();
                
                $partner_id = $user->partner_id;
                $name = $user->name;
                $image = $user->image1;
                $is_frequency = Admin_question_status::where('type','surrogate')->where('user_id',$user_id)->get();
                
                if(count($is_frequency)>0)
                {
                    if($partner_id != ''){
                        $is_date_add = MilestoneUser::where('surrogate_id',$user_id)->where('milestone_id',2)->get();
                        
                        $date_of_milestone = $is_date_add[0]['date'];
                        
                        if($date_of_milestone){
                            $statuss = '';
                        }else{
                            $statuss = 'milestone_date_not_added';
                        }
                    }else{
                        $statuss = 'partner_not_assign';
                        $partner_id = NULL;
                    }
                }else{
                    $statuss = 'frequency_not_added';
                    $partner_id = NULL;
                }
        }
        if($statuss == ''){
            $status = 'on_boarding';
        }else{
            $status = $statuss;
        }
        $pregnancy_milestone_status = Pregnancy_Milestone_Status::where('type',$type)->where('user_id',$user_id)->pluck('status');
        if(count($pregnancy_milestone_status)>0){
            $pregnancy_milestone_status333 = $pregnancy_milestone_status[0];
        }else{
            $pregnancy_milestone_status333 = null;
        }
        return Response::json([
            'status' => $status,
            'partner_id' => $partner_id,
            'image' => $image,
            'name' => $name,
            'pregnancy_milestone_status' => $pregnancy_milestone_status333
        ], 200);        
    }
    // ******************************************* Send push notification ***********************************************
    public function send_notification(){
        $data = [];

        $data['message'] = "How did the medical clearance go?";
        $data['booking_id'] = "my booking booking_id";

        $tokens = [];
        $tokens[] = 'f7rS4lBoT-iftXzEQt1wax:APA91bH_xfUkqUAKDstusKN-Xe2NGtNtaod4zuxnqwibNxLB5Mxtx91UmIbn4n6rHirm37erAmRI51p417K3uo_vWEc7fGkqtJYnwGcKpa9YVWVjKTCQF2kP5S7zG0MN7SHfxp9O_7XE';

        $serverKey = 'AAAA55UTwmU:APA91bH8-HB3mx-PfAZdAtC3BXP_vp1j9HzQYmhmi58Xn3-8IAqU6GcxYaLAcZ2339M3EYwSI9wsmEXI_9iL4rb60tDhiR3JNEdqlaBDYBTtuV7lkItIQH2rpF_fL3QVH3eJlTyqu2Ma';

        $msg = array
        (
            'message' => $data['message'],
            'booking_id' => $data['booking_id'],
        );

        $notifyData = [
            "body" => $data['message'],
            "title" => "Notification"
        ];

        $registrationIds = $tokens;

        if(count($tokens) > 1){
            $fields = array
            (
                'registration_ids' => $registrationIds,
                'notification' => $notifyData,
                'data' => $msg,
                'priority' => 'high'
            );
        }else{
            $fields = array
            (
                'to' => $registrationIds[0],
                'notification' => $notifyData,
                'data' => $msg,
                'priority' => 'high'
            );
        }

        $headers = array
            (
                'Authorization: key=' . $serverKey,
                'Content-Type: application/json'
            );
        //#Send Reponse To FireBase Server
        $ch = curl_init();
        curl_setopt( $ch,CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send' );
        curl_setopt( $ch,CURLOPT_POST, true );
        curl_setopt( $ch,CURLOPT_HTTPHEADER, $headers );
        curl_setopt( $ch,CURLOPT_RETURNTRANSFER, true );
        curl_setopt( $ch,CURLOPT_SSL_VERIFYPEER, false );
        curl_setopt( $ch,CURLOPT_POSTFIELDS, json_encode( $fields ) );
        $result = curl_exec($ch );
        // dd($result);
        curl_close( $ch );  
    }
    public function get_notification(Request $request){
        $user_id = $request->user_id;
        $type = $request->type;

        $update_notification = Notification::where('type',$type)->where('user_id',$user_id)->update(['count'=>'true']);
        $notification = Notification::where('type',$type)->where('user_id',$user_id)->get(['id','date','title','notification']);
        
        if($notification){  
            $days = array();
            foreach($notification as $day){
                $current_date = Carbon::parse(date('Y-m-d', strtotime(now())));
                $created_at = Carbon::parse(date('Y-m-d', strtotime($day->date)));
                $shift_difference = $current_date->diffInDays($created_at);
                array_push($days,$shift_difference);
            }
            return Response::json([
                'data' => $notification,
                'days' => $days
            ], 200); 
        }else{
            return Response::json([
                'error_code' => '1005',
                'status' => '404',
                'message' => 'Record not found'
            ], 404);
        }
    }
    public function get_notification_detail(Request $request){
        $user_id = $request->user_id;

        $notification = Notification::find($user_id,['title','notification','date']);
       
        if($notification){
            $current_date = Carbon::parse(date('Y-m-d', strtotime(now())));
            $created_at = Carbon::parse(date('Y-m-d', strtotime($notification->date)));
            $shift_difference = $current_date->diffInDays($created_at);
            return Response::json([
                'data' => $notification,
                'days' => $shift_difference
            ], 200);
        }else{
            return Response::json([
                'error_code' => '1005',
                'status' => '404',
                'message' => 'Record not found'
            ], 404);
        }
    }
    public function notification_status_update(Request $request){
        $type = $request->type;
        $user_id = $request->user_id;
        $status = $request->status;

        if($type == 'parent'){
            $user = App_User::find($user_id);
            $user->parent_notification_status = $status;
            $user->update(); 
        }else{
            $user = App_User_surrogate::find($user_id);
            $user->notification_status = $status;
            $user->update();
        }
        if($user){
            return Response::json([
                'error_code' => '1004',
                'status' => '201',
                'message' => 'Notificaton status updated successfully'
            ], 201);
        }else{
            return Response::json([
                'error_code' => '1001',
                'status' => '401',
                'message' => 'Notification status update request fail'
            ], 401);
        }
    }
    public function get_notification_status(Request $request){
        $type = $request->type;
        $user_id = $request->user_id;

        if($type == 'parent'){
            $user = App_User::find($user_id);
            $status = $user->parent_notification_status;
        }else{
            $user = App_User_surrogate::find($user_id);
            $status = $user->notification_status;
        }
        if($user){
            return Response::json([
                'status' => $status
            ], 201);
        }else{
            return Response::json([
                'error_code' => '1005',
                'status' => '404',
                'message' => 'Record not found'
            ], 404);
        }
    }
    public function get_notification_count(Request $request){
        $type = $request->type;
        $user_id = $request->user_id;

        $count = Notification::where('type',$type)->where('user_id',$user_id)->where('count','false')->count();

        return Response::json([
            'count' => $count
        ], 201);

    }
    
}