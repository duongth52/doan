<?php
//client
// bỏ thằng đấy đi ,k  dùng   ajax choox nao

Route::get('/home', 'ClientHomeController@home')->name('home');
Route::get('/dat-lich-kham','ClientBookingController@booking')->name('datlich');
//Route::post('/dat-lich-kham', 'ClientBookingController@saveBooking')->name('saveBooking');
Route::get('/dat-lich-kham/time/','ClientBookingController@showTime' )->name('showTime');

Route::post('/ajaxRequest', 'ClientBookingController@test');

Route::get('/login', 'AdminLoginController@showLogin')->name('showLogin');
Route::post('/login', 'AdminLoginController@login')->name('login');
Route::any('/logout', 'AdminLoginController@logout')->name('logout');

Route::view('/loginclient', 'client_login');

//user: admin -> them sua xoa bac si
//  user -> danh sach booking

//bác sĩ
Route::group([
    'prefix' => 'admin',
    'middleware'=>['web','checkAdmin'],
], function(){
    // admin
    Route::view('/', 'dashboard');

    //booking
    Route::get('/danh-sach-booking', 'bookingController@index')->name('danhsachBooking');
    Route::view('/them-booking', 'admin.booking.thembooking')->name('themBooing');

    //bênh nhân
    Route::view('/danh-sach-benh-nhan', 'admin.danhsachbenhnhan');
    Route::view('/them-benh-nhan', 'admin.thembenhnhan');

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

    //result
    Route::get('/danh-sach-ket-qua', 'ResultController@listResult')->name('danhSachResult');
    Route::get('/them-ket-qua', 'ResultController@showAdd')->name('showAddResult');
    Route::post('/them-ket-qua', 'ResultController@Create')->name('createResult');
    Route::get('/sua-ket-qua/{id}', 'ResultController@showUpdate')->name('showUpdateResult');
    Route::post('/sua-ket-qua/{id}', 'ResultController@Update')->name('updateResult');
    Route::get('/xoa-ket-qua/{id}', 'ResultController@delete')->name('deleteResult');
});



// Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');
