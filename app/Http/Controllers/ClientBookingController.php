<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Pusher\Pusher;
use App\Khoa;
use App\TimeSlot;
use App\Booking;
use App\User;
use Carbon\Carbon;

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

                    $html .= '<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12" class="itemTimeSlot" onClick="getIdTime('.$time->id.')">
                                <div class="agent-1"  id=time_'.$time->id.'>
                                    <div class="agent-content">
                                        <h5 style="margin-bottom: 10px; font-weight: bold; ">'.$time->time.'</h5>
                                        <hr style="margin: 0px" />
                                        <p style="font-weight: bold; "> còn '. ( $time->total - $count_slot ) .'</p>
                                    </div>
                                </div>
                            </div>';
                }
        }

        $mytime = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();
        $ckeckBooking = Booking::where('email', 'duong@gmail.com')->get();

        $data = array();
        foreach ($ckeckBooking as $booking){
            if($booking->created_at->toDateString() === $mytime ) {
                array_push($data, $booking);
            }
        }

        $checkBook_date = $ckeckBooking[0]->book_date;

        return response()->json(['html' => $html, 'count' => count($timeslot), 'time'=>$checkBook_date ]);
    }


    public function createNewBooking() {

    }

    public function test(Request $request)
    {
        $booking = new Booking();

        $booking->name = $request->name;
        $booking->email = $request->email;
        $booking->birthday = $request->birthday;
        $booking->gender = $request->gender;
        $booking->id_khoa = $request->khoa;
        $booking->phone = $request->phone;
        $booking->book_date = $request->bookingDate;
        $booking->id_time = $request->id_time;
        $booking->note = $request->note;


        if($booking->save()) {
            $data['title'] = $request->input('title');
                $data['content'] = $request->input('content');

                $options = array(
                    'cluster' => 'mt1',
                    'encrypted' => true
                );

                $pusher = new Pusher(
                    env('PUSHER_APP_KEY'),
                    env('PUSHER_APP_SECRET'),
                    env('PUSHER_APP_ID'),
                    $options
                );

                $pusher->trigger('Notify', 'send-message', $data);

        }
        return response()->json(['status' => 200]);



    }

    ///// check
    public function test1(Request $request) {

        //email k tồn tại => createNew
        $email = $request->email;
        $ckeckBooking = Booking::where('email', $email)->get();

        //tạo mới
        if(!$ckeckBooking) {
            $booking = new Booking();

            $booking->name = $request->name;
            $booking->email = $request->email;
            $booking->birthday = $request->birthday;
            $booking->gender = $request->gender;
            $booking->id_khoa = $request->khoa;
            $booking->phone = $request->phone;
            $booking->book_date = $request->bookingDate;
            $booking->id_time = $request->id_time;
            $booking->note = $request->note;

            $booking->save();
        }
        else {

            // $data = array();
            // $timeDay = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();

            // foreach ($ckeckBooking as $booking){
            //     if($booking->created_at->toDateString() === $timeDay ) {
            //         array_push($data, $booking);
            //     }
            // }
            // if(!$data)


            //check 0 cùng ngày book_date => tạo mới.

            $checkBook_date = array();
            $bookingDate = (string)$request->bookingDate;

            foreach ($ckeckBooking as $booking){
                if($booking->book_date === $bookingDate) {
                    array_push($checkBook_date, $booking);
                }
            }

            if(!$bookingDate) {
                //khác ngày
                $booking = new Booking();

                $booking->name = $request->name;
                $booking->email = $request->email;
                $booking->birthday = $request->birthday;
                $booking->gender = $request->gender;
                $booking->id_khoa = $request->khoa;
                $booking->phone = $request->phone;
                $booking->book_date = $request->bookingDate;
                $booking->id_time = $request->id_time;
                $booking->note = $request->note;

                $booking->save();

            }else {
                //cùng ngày và count_destroy  < 3 => update

                if($bookingDate[0]->count_destroy < 3) {

                }

            }

        }



        return response()->json(['status' => 200]);
}


}
