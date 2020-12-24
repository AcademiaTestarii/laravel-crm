<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('register', 'Auth\AuthController@getRegister');
Route::post('register', 'Auth\AuthController@postRegister');

Route::get('password/reset', 'Auth\AuthController@getPasswordReset');
Route::post('password/reset', 'Auth\AuthController@postPasswordReset');

Route::get('login', 'Auth\AuthController@getLogin')->name('login');
Route::get('/', 'Auth\AuthController@getLogin');
Route::post('login', 'Auth\AuthController@postLogin');

Route::get('/account/activate/{hash}', 'Auth\AuthController@activate');

Route::middleware('auth:api')->group(function () {
    Route::get('logout', 'Auth\AuthController@logOut')->name('logout');
    //Route::get('blank_dashboard', 'DashboardController@getBlankDashboard')->name('blank-dashboard');

    Route::group(['middleware' => ['ability:can-view-all']], function () {
        Route::get('dashboard', 'DashboardController@index')->name('dashboard');
        Route::get('homepage', 'HomepageController@index')->name('homepage');
        Route::post('homepage', 'HomepageController@update');

        Route::get('sliders', 'SliderController@index')->name('slider');
        Route::get('slider_remove_image', 'SliderController@removeImage');
        Route::post('sliders', 'SliderController@update');

        Route::get('testimonial', 'TestimonialController@index')->name('testimonial');
        Route::get('testimonials', 'TestimonialController@all')->name('testimonials');
        Route::post('testimonial', 'TestimonialController@update');

        Route::get('content', 'ContentController@index')->name('content');
        Route::post('content', 'ContentController@update');

        Route::get('classes_list', 'ClassesController@index')->name('classes');
        Route::get('class', 'ClassesController@get')->name('class');
        Route::post('class', 'ClassesController@update');

        Route::get('class_details/{classId}', 'ClassesController@getDetails')->name('class_details');
        Route::post('class_details/{classId}', 'ClassesController@updateDetails');

        Route::get('inline_note', 'ClassesController@getNote');
        Route::get('inline_move_student', 'ClassesController@getMoveStudent');

        Route::get('feedback/{id}', 'FeedbackController@getDetails');
        Route::get('certificate/{id}', 'FeedbackController@getCertificateDetails');

        Route::get('students', 'StudentController@index')->name('students');
        Route::get('communication', 'CommunicationController@index')->name('communication');

        Route::get('trainers_list', 'TrainerController@index')->name('trainers');
        Route::get('trainer', 'TrainerController@getTrainer')->name('trainer');
        Route::post('trainer', 'TrainerController@update');
        Route::get('trainer/removeimage', 'TrainerController@removeImage');

        Route::get('partners_list', 'PartnerController@index')->name('partners');
        Route::get('partner', 'PartnerController@getPartner')->name('partner');
        Route::post('partner', 'PartnerController@update');
        Route::get('partner/removeimage', 'PartnerController@removeImage');

        Route::get('blog_list', 'BlogController@index');
        Route::get('blog', 'BlogController@getBlogData');
        Route::get('blog/{id}', 'BlogController@getBlog')->name('blog');
        Route::post('blog/{id}', 'BlogController@update');
        Route::post('blog', 'BlogController@add');
        Route::post('blog/{id}/uploadImage', 'BlogController@uploadImage');

        Route::get('search', 'SearchController@index');

        //STUDENTS
        Route::get('classes_offer', 'ClassesOfferController@index')->name('classes_offer');
        Route::get('classes_offer/{classId}', 'ClassesOfferController@get')->name('class_offer');
        Route::any('classes_offer/{classId}/class_signup', 'ClassSignupController@classSignup')->name('class_signup');


    });
});

Route::get('account', function() {
    return '';
});

Route::get('trainer/settings/', function() {
    return '';
});

Route::get('trainer/calendar/', function() {
    return '';
});

Route::get('resources', function() {
    return '';
});

Route::get('/student/catalog', function() {
    return '';
});

Route::get('/student/classes', function() {
    return '';
});

Route::get('/student/my_classes', function() {
    return '';
});