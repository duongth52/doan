<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Booking;
use App\Khoa;
use App\User;

class bookingController extends Controller
{
    public function index()
    {

        // $data = Booking::select('*')->where('book_date', '2019-12-01')->get();
        // dd($data);

        $booking = Booking::leftJoin('users', 'users.id', '=', 'booking.id_doctor')
            ->leftJoin('khoa', 'khoa.id', '=', 'booking.id_khoa')
            ->leftJoin('timeslot', 'timeslot.id', '=', 'booking.id_time')
            ->select('booking.*', 'users.name as doctorName', 'khoa.name as khoaName', 'timeslot.time')
            ->get();

        return view('admin.booking.booking', compact('booking'));
    }
}
