<?php
//clinet


Route::get('/home', 'bookingController@home');
Route::get('/dat-lich-kham','bookingController@booking')->name('datlich');
// Route::post('/dat-lich-kham', 'bookingController@saveBooking');
Route::get('/dat-lich-kham/doctor','bookingController@showDoctor' )->name('showDoctor');


// admin

//Route::view('/', 'dashboard');


//booking
Route::get('/danh-sach-booking', 'bookingController@index');
Route::view('/them-booking', 'admin.booking.thembooking');

//bẹnh nhân
Route::view('/danh-sach-benh-nhan', 'admin.danhsachbenhnhan');
Route::view('/them-benh-nhan', 'admin.thembenhnhan');

Route::get('/danh-sach-nhan-vien', 'BacSiController@getALL')->name('danhsachnhanvien');
Route::get('/them-nhan-vien', 'BacSiController@getAdd')->name('addnv');
Route::post('/them-nhan-vien', 'BacSiController@postAdd')->name('add');
Route::get('/edit/{id}', 'BacSiController@edit')->name('doctor');
Route::post('/sua-nhan-vien/{id}', 'BacSiController@update')->name('update');
Route::get('/xoa-nhan-vien/{id}', 'BacSiController@delete')->name('delete');
