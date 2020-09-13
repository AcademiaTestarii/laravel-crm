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

Route::get('slider', 'SliderController@index')->name('slider');
Route::get('slider_remove_image', 'SliderController@removeImage');
Route::post('slider', 'SliderController@update');

Route::get('testimonial', 'TestimonialController@index')->name('testimonial');
Route::get('testimonials', 'TestimonialController@all')->name('testimonials');
Route::post('testimonial', 'TestimonialController@update');

Route::get('content', 'ContentController@index')->name('content');
Route::post('content', 'ContentController@update');

Route::get('classes_list', 'ClassesController@index')->name('classes');
Route::get('class', 'ClassesController@get')->name('class');
Route::post('class', 'ClassesController@update');

Route::get('class_details/{classId}', 'ClassesController@getDetails')->name('class_details');
Route::post('class_details/{classId}', 'ClassesController@updateNote');
Route::get('inline_note', 'ClassesController@getNote');

Route::get('feedback/{id}', 'FeedbackController@getDetails');
Route::get('certificate/{id}', 'FeedbackController@getCertificateDetails');