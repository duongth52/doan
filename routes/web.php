<?php
//client

Route::get('/', 'ClientHomeController@home')->name('home');
Route::get('/dat-lich-kham','ClientBookingController@booking')->name('datlich');
Route::get('/dat-lich-kham/time/','ClientBookingController@showTime' )->name('showTime');

//contact
Route::get('/lien-he', 'ClientContactController@index')->name('contact');


Route::post('/ajaxRequest', 'ClientBookingController@test');
Route::post('/ajaxBooking', 'ClientBookingController@sendMailBooking');
Route::get('/xoa-dat-lich/{code}', 'ClientBookingController@xoaBooking')->name('xoaBooking');

//xem kết quả khám
Route::get('/xem-ket-qua-kham','ClientBookingController@showResult' )->name('xemketqua');
Route::get('/getResult','ClientBookingController@getResult');
Route::get('/xem-chi-tiet-ket-qua/{id}','ClientBookingController@showResultClient')->name('showResultClient');
Route::get('/thong-tin-bac-si/{id}','ClientHomeController@showDetailDoctor')->name('showDetailDoctor');


Route::get('/login', 'AdminLoginController@showLogin')->name('showLogin');
Route::post('/login', 'AdminLoginController@login')->name('login');
Route::any('/logout', 'AdminLoginController@logout')->name('logout');




Route::group([
    'prefix' => 'admin',
    'middleware'=>['web','checkAdmin'],
], function(){
    // admin
    Route::view('/', 'dashboard');

    //booking
    Route::get('/danh-sach-booking', 'bookingController@index')->name('danhsachBooking');
    Route::view('/them-booking', 'admin.booking.thembooking')->name('themBooing');
    Route::get('/danh-sach-booking-today', 'bookingController@listBookingToday')->name('listBookingToDay');
    Route::get('/them-moi-patient/{id}', 'bookingController@createPaitent')->name('createPaitentBooking');
    Route::get('/xoa-booking/{id}', 'bookingController@delete')->name('deleteBooking');


    //bênh nhân
    Route::get('/danh-sach-benh-nhan', 'PatientController@index')->name('danhsachbenhnhan');
    Route::get('/them-benh-nhan', 'PatientController@thembenhnhan')->name('thembenhnhan');
    Route::post('/them-benh-nhan', 'PatientController@create')->name('createpatient');
    Route::get('/sua-benh-nhan/{id}', 'PatientController@edit')->name('suabenhnhan');
    Route::post('/sua-benh-nhan/{id}', 'PatientController@update')->name('updatePatient');
    Route::get('/xoa-benh-nhan/{id}', 'PatientController@delete')->name('deletePatient');
    Route::get('/chi-tiet-benh-nhan/{id}', 'PatientController@detail')->name('detailPatient');

    Route::get('/them-ket-qua/{id}', 'PatientController@showAddResult')->name('showAddResultPateint');


    //doctor
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
    Route::get('/chi-tiet-bai-viet/{id}', 'ArticleController@showDetailBlog');

    //result
    Route::get('/danh-sach-ket-qua', 'ResultController@listResult')->name('danhSachResult');
    Route::get('/them-ket-qua', 'ResultController@showAdd')->name('showAddResult');
    Route::post('/them-ket-qua', 'ResultController@Create')->name('createResult');
    Route::get('/sua-ket-qua/{id}', 'ResultController@showUpdate')->name('showUpdateResult');
    Route::post('/sua-ket-qua/{id}', 'ResultController@Update')->name('updateResult');
    Route::get('/xoa-ket-qua/{id}', 'ResultController@delete')->name('deleteResult');
    Route::get('/detail-result/{id}','ResultController@detail')->name('detailResult');


    //Time
    //  Route::get('/danh-sach-ket-qua', 'ResultController@listResult')->name('danhSachResult');
    //  Route::get('/them-ket-qua', 'ResultController@showAdd')->name('showAddResult');
    //  Route::post('/them-ket-qua', 'ResultController@Create')->name('createResult');
    //  Route::get('/sua-ket-qua/{id}', 'ResultController@showUpdate')->name('showUpdateResult');
    //  Route::post('/sua-ket-qua/{id}', 'ResultController@Update')->name('updateResult');
    //  Route::get('/xoa-ket-qua/{id}', 'ResultController@delete')->name('deleteResult');


});

// Auth::routes();
// Route::get('/home', 'HomeController@index')->name('home');
