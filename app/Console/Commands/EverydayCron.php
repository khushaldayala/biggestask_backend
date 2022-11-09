<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\OTP;
use App\Models\Notification;
use App\Models\App_User_surrogate;
use App\Models\MilestoneUser;
use DB;
use Carbon\Carbon;

class EverydayCron extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'everyday:sendnotification';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'This will send push notification';

    /**
     * Create a new command instance.
     *
     * @return void
     */ 
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {   
        // For manage nearest milestone date 
        $current_date = now()->format('Y/m/d');
        MilestoneUser::where('date', '>=', $current_date)->update(['date_status'=>1]);
        MilestoneUser::where('date', '<', $current_date)->update(['date_status'=>0]);
        
        // For send push notification 
        $current_date = now()->format('Y/m/d');
        $milestoneUser = MilestoneUser::has('milestone.questions')
            ->where(function($query) {
                $query->whereDate('date', now()->addDays(-1)->format('Y-m-d'))
                    ->orWhereDate('date', now()->addDays(-14)->format('Y-m-d'))
                    ->orWhereDate('date', now()->addDays(1)->format('Y-m-d'));
            })
            ->get();
        $question = null;
        $data = array();
        if($milestoneUser) {
            foreach($milestoneUser as $key=>$mile){
                if($mile->date == now()->addDays(-14)->format('Y-m-d')) {
                    $question = $mile->milestone->questions()->latest()->first();
                } else {
                    $question = $mile->milestone->questions()->first();
                }
                
            $all_question = [];
            array_push($all_question,$question);
            $data = [];
            $demo_question = json_encode($all_question[0]['question']);
            $data['message'] = $all_question[0]['question'];
            $data['title'] = $mile->title;
            $data['milestone_id'] = $mile->id;
    
            $tokens = [];
            $tokens[] = App_User_surrogate::where('id',$mile->surrogate_id)->pluck('fcm_token')->all();
            $tok = json_encode($tokens);
            $serverKey = 'AAAA55UTwmU:APA91bH8-HB3mx-PfAZdAtC3BXP_vp1j9HzQYmhmi58Xn3-8IAqU6GcxYaLAcZ2339M3EYwSI9wsmEXI_9iL4rb60tDhiR3JNEdqlaBDYBTtuV7lkItIQH2rpF_fL3QVH3eJlTyqu2Ma';
    
            // store data in notification table
            $notification = new Notification;
            $notification->type = $mile->type;
            $notification->user_id = $mile->surrogate_id;
            $notification->fcm_token = $tok;
            $notification->date = Carbon::parse(now())->format('Y-m-d');
            $notification->title = $mile->title;
            $notification->notification = str_replace('"', '', $demo_question);
            $notification->save();

            $msg = array
            (
                'message' => $data['message'],
                'milestone_id' => $data['milestone_id'],
            );
    
            $notifyData = [
                "body" => $data['message'],
                "title" => $data['title']
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

            
        }

        
        }
    }
}
