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

        $booking = Booking::leftJoin('users', 'users.id', '=', 'booking.id_doctor')
            ->leftJoin('khoa', 'khoa.id', '=', 'booking.id_khoa')
            ->leftJoin('timeslot', 'timeslot.id', '=', 'booking.id_time')
            ->select('booking.*', 'users.name as doctorName', 'khoa.name as khoaName', 'timeslot.time')
            ->get();

        return view('admin.booking.booking', compact('booking'));
    }



    //client

    public function home()
    {

        // $user = User::where('id_khoa', '1')->get();
        // dd($user);
        return view('trangchu');
    }


    public function booking()
    {
        $khoa = Khoa::all();
        return view('booking', compact('khoa'));
    }

    public function showDoctor(Request $request)
    {

        if (!$request->id_khoa) {
            $html = '<option value="">' . trans('pleaseSelect') . '</option>';
        } else {
            $html = '';
            $doctor = User::where('id_khoa', $request->id_khoa)->get();
            foreach ($doctor as $bs) {
                $html .= '<option value="' . $bs->id . '">' . $bs->name . '</option>';
            }
        }

        return response()->json(['html' => $html]);
    }
}
