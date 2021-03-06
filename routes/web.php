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
Route::get('/', 'HomepageController@getHomepageIndex')->name('hp');

Route::get('register', 'Auth\AuthController@getRegister');
Route::post('register', 'Auth\AuthController@postRegister');

Route::get('password/reset', 'Auth\AuthController@getPasswordReset')->name('email_reset');
Route::post('password/reset', 'Auth\AuthController@postPasswordReset');
Route::post('password/email_reset', 'Auth\AuthController@postEmailPasswordReset');
Route::get('password/reset/{hash}', 'Auth\AuthController@getEmailPasswordReset');

Route::get('login', 'Auth\AuthController@getLogin')->name('login');
Route::post('login', 'Auth\AuthController@postLogin');

Route::get('/account/activate/{hash}', 'Auth\AuthController@activate');

Route::get('feedback/{id}', 'FeedbackController@getDetails');
Route::get('certificate/{id}', 'FeedbackController@getCertificateDetails');

Route::middleware('auth:api')->group(function () {
    Route::get('logout', 'Auth\AuthController@logOut')->name('logout');

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

        Route::get('students_list', 'StudentController@index')->name('students');
        Route::get('students_list/{studentId}', 'StudentController@getDetails');
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
        Route::get('student_dashboard', 'DashboardController@studentDashboard')->name('student_dashboard');
        Route::post('student_dashboard', 'DashboardController@update')->name('update_student_dashboard');
    });

});
Route::get('catalog/{mainClassId}/class_signup', 'CatalogController@getData')->name('class_signup');
Route::post('catalog/student/class_signup', 'CatalogController@update')->name('update_student');
Route::get('catalog', 'CatalogController@index')->name('catalog');
Route::get('catalog/{mainClassId}', 'CatalogController@get')->name('class_description');

Route::get('trainer/settings/', function () {
    return '';
});

Route::get('trainer/calendar/', function () {
    return '';
});

Route::get('resources', function () {
    return '';
});
