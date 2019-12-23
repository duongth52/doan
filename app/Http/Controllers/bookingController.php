<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Booking;
use App\Patient;

class bookingController extends Controller
{
    public function index()
    {

        $booking = Booking::leftJoin('users', 'users.id', '=', 'booking.id_doctor')
            ->leftJoin('khoa', 'khoa.id', '=', 'booking.id_khoa')
            ->leftJoin('timeslot', 'timeslot.id', '=', 'booking.id_time')
            ->select('booking.*', 'users.name as doctorName', 'khoa.name as khoaName', 'timeslot.time')
            ->orderBy('created_at', 'DESC')
            ->get();

        return view('admin.booking.booking', compact('booking'));
    }

    public function createPaitent($id) {
        $booking = Booking::findOrFail($id);

        $patient = Patient::where('email', $booking->email )->get();
        if(count($patient) === 0 ) {
            $patientNew = new Patient();
            $patientNew->name = $booking->name;
            $patientNew->phone = $booking->phone;
            $patientNew->email = $booking->email;
            $patientNew->gender = $booking->gender;
            $patientNew->password = Hash::make($booking->email);
            $patientNew->birthday = $booking->birthday;

            $patientNew->save();
            return redirect()->route('danhsachbenhnhan')->with('message', 'success');
        }
        else {
            return view('admin.benhnhan.danhsachbenhnhan', compact('patient'));
        }
    }

    public function delete($id) {
        Booking::destroy($id);
        return redirect('admin/danh-sach-booking');;
    }
}
