<?php
//client
// bỏ thằng đấy đi ,k  dùng   ajax choox nao

Route::get('/home', 'ClientHomeController@home')->name('home');
Route::get('/dat-lich-kham','ClientBookingController@booking')->name('datlich');
//Route::post('/dat-lich-kham', 'ClientBookingController@saveBooking')->name('saveBooking');
Route::get('/dat-lich-kham/time/','ClientBookingController@showTime' )->name('showTime');

Route::post('/ajaxRequest', 'ClientBookingController@test'); // ddaay laf urrl


// admin
//Route::view('/', 'dashboard');

//booking
Route::get('/danh-sach-booking', 'bookingController@index')->name('danhsachBooking');
Route::view('/them-booking', 'admin.booking.thembooking')->name('themBooing');

//bênh nhân
Route::view('/danh-sach-benh-nhan', 'admin.danhsachbenhnhan');
Route::view('/them-benh-nhan', 'admin.thembenhnhan');

//bác sĩ
Route::get('/danh-sach-nhan-vien', 'BacSiController@getALL')->name('danhsachnhanvien');
Route::get('/them-nhan-vien', 'BacSiController@getAdd')->name('addnv');
Route::post('/them-nhan-vien', 'BacSiController@postAdd')->name('add');
Route::get('/edit/{id}', 'BacSiController@edit')->name('doctor');
Route::post('/sua-nhan-vien/{id}', 'BacSiController@update')->name('update');
Route::get('/xoa-nhan-vien/{id}', 'BacSiController@delete')->name('delete');

// categori
Route::get('/danh-sach-danh-muc', 'CategoriController@index')->name('danhSachCategori');
Route::get('/them-danh-muc', 'CategoriController@showAdd')->name('showAddCategori');
Route::post('/them-danh-muc', 'CategoriController@Create')->name('createCategori');
Route::get('/sua-danh-muc/{id}', 'CategoriController@showUpdate')->name('showUpdateCategori');
Route::post('/sua-danh-muc/{id}', 'CategoriController@Update')->name('updateCategori');
Route::get('/xoa-danh-muc/{id}', 'CategoriController@delete')->name('deleteCategori');

// articles
Route::get('/danh-sach-bai-viet', 'ArticleController@index')->name('danhSachArticle');
Route::get('/them-bai-viet', 'ArticleController@showAdd')->name('showAddArticle');
Route::post('/them-bai-viet', 'ArticleController@Create')->name('createArticle');
Route::get('/description', 'ArticleController@description')->name('description');
Route::get('/sua-bai-viet/{id}', 'ArticleController@showUpdate')->name('showUpdateArticle');
Route::post('/sua-bai-viet/{id}', 'ArticleController@Update')->name('updateArticle');
Route::get('/xoa-bai-viet/{id}', 'ArticleController@delete')->name('deleteArticle');
