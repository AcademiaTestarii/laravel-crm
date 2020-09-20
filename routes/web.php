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

Route::get('/', function () {
    return view('welcome');
});

Route::get('dashboard', 'DashboardController@index');
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


Route::get('blog', 'BlogController@index')->name('blog');