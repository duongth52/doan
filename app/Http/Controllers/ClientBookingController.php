<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\sendMailBooking;
use App\Khoa;
use App\TimeSlot;
use App\Booking;
use Carbon\Carbon;
use App\Patient;
use App\Result;

class ClientBookingController extends Controller
{

  public function booking()
  {
    $khoa = Khoa::all();
    return view('booking', compact('khoa'));
  }

  // ajax return timeslot
  public function showTime(Request $request)
  {

    $html = '';
    $date = $request->date;
    $timeslot = TimeSlot::all();

    $booking = Booking::select('id_time')->where('book_date', $date)->get();

    $id_time = array();
    $count = array();

    foreach ($booking as $item) {
      array_push($id_time, $item->id_time);
    };

    $count = array_count_values($id_time);

    if (!$date) {
      $html = '<div class="col-md-12">Chọn sai ngày</div>';
    } else {
      $index = 0;
      $count_lenth = count($count);

      foreach ($timeslot as $time) {

        $index++;
        if ($index > $count_lenth) {
          $count_slot = 0;
        } else {
          $count_slot = $count[$index];
        }

        $html .= '<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12" class="itemTimeSlot" onClick="getIdTime(' . $time->id . ')">
                                <div class="agent-1"  id=time_' . $time->id . '>
                                    <div class="agent-content">
                                        <h5 style="margin-bottom: 10px; font-weight: bold; ">' . $time->time . '</h5>
                                        <hr style="margin: 0px" />
                                        <p style="font-weight: bold; "> còn ' . ($time->total - $count_slot) . '</p>
                                    </div>
                                </div>
                            </div>';
      }
    }
    $time = TimeSlot::where('id', 3)->get();
    return response()->json(['html' => $html, 'time' => $time[0]->time]);
  }


  public function test(Request $request)
  {

    $timeNow = new \DateTime(Carbon::now('Asia/Ho_Chi_Minh')->toDateString());
    $bookingDate = new \DateTime($request->bookingDate);

    if ($bookingDate > $timeNow) {

      $data = Booking::where('email', '=', $request->email)
        ->where('book_date', '=', $request->bookingDate)
        ->get();

      $count = count($data);

      if ($count > 0) {
        return response()->json(['status' => 301]);
      } else {

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

        if ($booking->save()) {
          $time = TimeSlot::where('id', $booking->id_time)->first();
          return response()->json(['status' => 200, 'data' => $booking, 'time' => $time->time]);
        }
      }
    } else {
      return response()->json(['status' => 302, 'data' => 'Bạn chọn ngày khám chưa chính xác !']);
    }
  }

  public function sendMailBooking(Request $request)
  {

    //   send mail
    $data = [
      'name' => $request->name,
      'date' => $request->date,
      'time' => $request->time
    ];
    Mail::to($request->email)
      ->send(new sendMailBooking($data));

  //  return response()->json(['status' => 200, 'data' => 'okeeeeeeeeee']);
  }

  //xem kết quả khám
  public function showResult() {
     return view('result');
  }


  public function getResult(Request $request) {

    $code = $request->code;

    $patient = Patient::where('code', $code)->first();

    $result = Result::where('id_patient', $patient->id)
    ->leftJoin('users', 'users.id', '=', 'result.id_doctor')
    ->select('result.*', 'users.name as doctorName')
    ->get();

    $html= '';
    $tr = '';
    if(count($result)){

        // {{route('deleteBooking', $data->id)}}


        foreach ($result as $item) {
            $tr .= '<tr>
                <td>'.$item->doctorName.'</td>
                <td>'.$item->description.'</td>
                <td>'.$item->created_at.'</td>
                <td>
                <a href="{{route("showResultClient",'.$item->id .')}}">Xem</a></td>

            </tr>';
        }

        $html = '<h2>Danh sách kết quả: </h2>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Tên bác sĩ</th>
                                <th>Mô tả bệnh</th>
                                <th>Ngày tạo</th>
                                <th>Hành động</th>
                            </tr>
                        </thead>
                        <tbody>'.
                                $tr
                        .'</tbody>
                    </table>';
    }


    return response()->json(['data' => $html]);
  }


  public function showResultClient($id) {
      dd($id);
  }



}
