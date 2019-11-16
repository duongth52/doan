<?php

Route::view('/', 'dashboard');
Route::view('/danh-sach-booking', 'admin.booking');
Route::view('/them-booking', 'admin.thembooking');


Route::view('/danh-sach-benh-nhan', 'admin.danhsachbenhnhan');
Route::view('/them-benh-nhan', 'admin.thembenhnhan');




Route::get('/danh-sach-nhan-vien', 'BacSiController@getALL')->name('danhsachnhanvien');
Route::get('/them-nhan-vien', 'BacSiController@getAdd')->name('addnv');
Route::post('/them-nhan-vien', 'BacSiController@postAdd')->name('add');
Route::get('/edit/{id}', 'BacSiController@edit')->name('doctor');
Route::post('/sua-nhan-vien/{id}', 'BacSiController@update')->name('update');
Route::get('/xoa-nhan-vien/{id}', 'BacSiController@delete')->name('delete');
