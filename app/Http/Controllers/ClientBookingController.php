<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Khoa;
use App\TimeSlot;
use App\Booking;
use App\User;
use PHPUnit\Util\Json;
use Illuminate\Support\Facades\DB;
class ClientBookingController extends Controller {

    public function booking() {
        $khoa = Khoa::all();
        return view('booking', compact('khoa'));
    }

    // ajax return timeslot
    public function showTime(Request $request) {
        $html = '';
        $date = $request->date;
        $timeslot = TimeSlot::all();

        $booking = Booking::select('id_time')->where('book_date', $date)->get();


        $id_time = array();
        $count = array();

        foreach($booking as $item) {
            array_push($id_time, $item->id_time);
         };

        $count = array_count_values($id_time);

        // return  count($count);

        if (!$date) {
            $html = '<div class="col-md-12">Chọn sai ngày</div>';
        } else {
                $index = 0;
                $count_lenth= count($count);

                foreach ($timeslot as $time) {

                    $index ++;
                    if($index > $count_lenth) {
                        $count_slot = 0;
                    }else {
                        $count_slot = $count[$index];
                    }

                    $html .= '<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12" class="itemTimeSlot" id="'.$time->id.'">
                                <div class="agent-1">
                                    <div class="agent-content">
                                        <h5 style="margin-bottom: 10px; font-weight: bold; ">'.$time->time.'</h5>
                                        <hr style="margin: 0px" />
                                        <p style="font-weight: bold; "> còn '. ( $time->total - $count_slot ) .'</p>
                                    </div>
                                </div>
                            </div>';
                }
        }

        return response()->json(['html' => $html, 'count' => count($timeslot) ]);
    }


    ///// check
    public function test(Request $request) {
        // return $request->name;
        // dd($request);
        $booking = new Booking();
        // dc r nhe
        $booking->name = $request->name;
        $booking->email = $request->email;
        // $booking->birthday = $request->birthday;
        // $booking->gender = $request->gender;
        // $booking->khoa = $request->khoa;
        $booking->phone = $request->phone;
        // $booking->bookingDate = $request->boMAokingDate;
        // $booking->note = $request->note;

        $booking->save();
        return response()->json(['status' => 200, 'data' =>  $booking]);
}


}
