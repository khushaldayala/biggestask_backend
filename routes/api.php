<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\AppapiController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// ************************************* For Admin panel api *******************************************
Route::post('/check_login', [UserController::class, 'check_login'])->name('check_login');

Route::post('/send_forgot_password', [UserController::class, 'send_forgot_password'])->name('send_forgot_password');

Route::get('/logout',[UserController::class, 'logout'])->name('logout');

Route::get('/profile',[UserController::class, 'profile'])->name('profile');

Route::post('/profile_update',[UserController::class, 'profile_update'])->name('profile_update');

Route::post('/change_password',[UserController::class, 'change_password'])->name('change_password');

Route::get('/category',[UserController::class, 'category'])->name('category');

Route::post('/category_create',[UserController::class, 'category_create'])->name('category_create');

Route::get('/category_edit/{id}',[UserController::class,'category_edit'])->name('category_edit');

Route::post('/category_update/{id}',[UserController::class,'category_update'])->name('category_update');

Route::get('/section_get',[UserController::class,'section_get'])->name('section_get');

Route::post('/section_create',[UserController::class,'section_create'])->name('section_create');

Route::get('/section_edit/{id}',[UserController::class,'section_edit'])->name('section_edit');

Route::post('/section_update/{id}',[UserController::class,'section_update'])->name('section_update');

Route::get('/section_destroy/{id}',[UserController::class,'section_destroy'])->name('section_destroy');

Route::get('/question_get_all',[UserController::class,'question_get_all'])->name('question_get_all');

Route::post('/question_create',[UserController::class,'question_create'])->name('question_create');

Route::get('/question_edit/{id}',[UserController::class,'question_edit'])->name('question_edit');

Route::post('/question_update',[UserController::class,'question_update'])->name('question_update');

Route::get('/question_destroy/{id}',[UserController::class,'question_destroy'])->name('question_destroy');

Route::get('/question_get/{id}',[UserController::class,'question_get'])->name('question_get');

Route::get('/get_journy',[UserController::class,'get_journy'])->name('get_journy');

Route::get('/journy_milestone/{id}',[UserController::class,'journy_milestone'])->name('/journy_milestone');

Route::get('/journy_user_detail/{id}/{slug}',[UserController::class,'journy_user_detail'])->name('journy_user_detail');

Route::get('/journy_sorting',[UserController::class,'journy_sorting'])->name('journy_sorting');

Route::post('/store_introscreen_info/{id}',[UserController::class,'store_introscreen_info'])->name('store_introscreen_info');

Route::get('/introscreen_info_delete/{id}',[UserController::class,'introscreen_info_delete'])->name('introscreen_info_delete');

Route::get('/introscreen_info_edit/{id}',[UserController::class,'introscreen_info_edit'])->name('introscreen_info_edit');

Route::get('/get_introscreen_info',[UserController::class,'get_introscreen_info'])->name('get_introscreen_info');

// *************************************** End for admin panel api *************************************

// **************************************** Start for application api **********************************

Route::post('/sendotp',[AppapiController::class,'sendotp'])->name('sendotp');

Route::post('/checkotp',[AppapiController::class,'checkotp'])->name('checkotp');

Route::post('/registration',[AppapiController::class,'registration'])->name('registration');

Route::post('/get_user_detail',[AppapiController::class,'get_user_detail'])->name('get_user_detail');

Route::post('/user_profile_update/{id}',[AppapiController::class,'user_profile_update'])->name('user_profile_update');

Route::post('/resend_otp',[AppapiController::class,'resend_otp'])->name('resend_otp');

Route::post('/login',[AppapiController::class,'login'])->name('login');

Route::get('/user_logout',[AppapiController::class,'user_logout'])->name('user_logout');

Route::post('/community_create',[AppapiController::class,'community_create'])->name('community_create');

Route::get('/get_community',[AppapiController::class,'get_community'])->name('get_community');

Route::post('/contact_create',[AppapiController::class,'contact_create'])->name('contact_create');

Route::get('/get_contact',[AppapiController::class,'get_contact'])->name('get_contact');

Route::get('/get_milestone',[AppapiController::class,'get_milestone'])->name('get_milestone');

Route::post('/assign_question',[AppapiController::class,'assign_question'])->name('assign_question');

Route::post('/get_assign_milestone',[AppapiController::class,'get_assign_milestone'])->name('get_assign_milestone');

Route::post('/create_milestone',[AppapiController::class,'create_milestone'])->name('create_milestone');

Route::post('/store_milestone_ans',[AppapiController::class,'store_milestone_ans'])->name('store_milestone_ans');

Route::get('/edit_milestone',[AppapiController::class,'edit_milestone'])->name('edit_milestone');

Route::post('/update_milestone_ans_info',[AppapiController::class,'update_milestone_ans_info'])->name('update_milestone_ans_info');

Route::post('/save_note',[AppapiController::class,'save_note'])->name('save_note');

Route::post('/update_milestone_image',[AppapiController::class,'update_milestone_image'])->name('update_milestone_image');

Route::post('/delete_milestone_image',[AppapiController::class,'delete_milestone_image'])->name('delete_milestone_image');

Route::post('/reset_milsestone',[AppapiController::class,'reset_milsestone'])->name('reset_milsestone');

Route::post('/invite_surrogate/{id}',[AppapiController::class,'invite_surrogate'])->name('invite_surrogate');

Route::post('/screen_question_status',[AppapiController::class,'screen_question_status'])->name('screen_question_status');

Route::get('/get_frequency',[AppapiController::class,'get_frequency'])->name('get_frequency');

Route::get('/get_qestion_screen_question',[AppapiController::class,'get_qestion_screen_question'])->name('get_qestion_screen_question');

Route::get('/intended_partner_que_ans',[AppapiController::class,'intended_partner_que_ans'])->name('intended_partner_que_ans');

Route::get('/get_nearest_milestone',[AppapiController::class,'get_nearest_milestone'])->name('get_nearest_milestone');

Route::get('/get_important_question',[AppapiController::class,'get_important_question'])->name('get_important_question');

Route::post('/store_ans_important_question',[AppapiController::class,'store_ans_important_question'])->name('store_ans_important_question');

Route::post('/store_question_ans',[AppapiController::class,'store_question_ans'])->name('store_question_ans');

Route::get('/get_home_screen_question',[AppapiController::class,'get_home_screen_question'])->name('get_home_screen_question');

Route::post('/get_surrogate_milestone',[AppapiController::class,'get_surrogate_milestone'])->name('get_surrogate_milestone');

Route::post('/get_pregnancy_milestone',[AppapiController::class,'get_pregnancy_milestone'])->name('get_pregnancy_milestone');

Route::post('/pregnancy_milestone_status',[AppapiController::class,'pregnancy_milestone_status'])->name('pregnancy_milestone_status');

Route::get('/get_pregnancy_status',[AppapiController::class,'get_pregnancy_status'])->name('get_pregnancy_status');

Route::get('/get_intro_info',[AppapiController::class,'get_intro_info'])->name('get_intro_info');

// for about page, terms and condition, privacy policy 
Route::get('/question_bank',[AppapiController::class,'question_bank'])->name('question_bank');

Route::get('/privacy_policy',[AppapiController::class,'privacy_policy'])->name('privacy_policy');

Route::get('/terms_of_service',[AppapiController::class,'terms_of_service'])->name('terms_of_service');

Route::get('/about_app',[AppapiController::class,'about_app'])->name('about_app');

// end about page, terms and condition, privacy policy 

Route::get('/get_updated_status',[AppapiController::class,'get_updated_status'])->name('get_updated_status');

Route::post('/update_payment_status',[AppapiController::class,'update_payment_status'])->name('update_payment_status');

Route::get('/get_intended_profile',[AppapiController::class,'get_intended_profile'])->name('get_intended_profile');

Route::get('/send_notification',[AppapiController::class,'send_notification'])->name('send_notification');

Route::get('/get_notification',[AppapiController::class,'get_notification'])->name('get_notification');

Route::get('/get_notification_detail',[AppapiController::class,'get_notification_detail'])->name('get_notification_detail');

Route::post('/notification_status_update',[AppapiController::class,'notification_status_update'])->name('notification_status_update');

Route::get('/get_notification_status',[AppapiController::class,'get_notification_status'])->name('get_notification_status');

Route::get('/get_notification_count',[AppapiController::class,'get_notification_count'])->name('get_notification_count');

// ***************************************** End for applicatoin api ***********************************