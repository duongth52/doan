<?php

namespace App\Http\Controllers;
use App\Result;
use App\Patient;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use App\Mail\sendMail;

class ResultController extends Controller
{
    public function listResult() {

        $result = Result::leftJoin('users', 'users.id', '=', 'result.id_doctor')
        ->leftJoin('patient', 'patient.id', '=', 'result.id_patient')
        ->select('result.*', 'users.name as doctorName', 'patient.name as patientName')
        ->get();

        return view('admin.result.listresult', compact('result'));
    }

    public function showAdd() {
        $patient = '';
        return view('admin.result.addresult', compact('patient'));
    }

    public function Create(Request $request){

             $validatedData = $request->validate([
                    'content_result' => 'required',
                    'prescription' => 'required',
                    'description' => 'required',

                ],
                [
                    'prescription.required' => 'Ban chua nhap đơn thuốc',
                    'content_result.required' => 'Bạn chưa nhập kêt quá',
                    'description.required' => 'Bạn cần nhập miêu tả tình trạng bệnh',
                    
                ]
            );
            $result = new Result();

            $result->id_doctor = Auth::user()->id;
            $result->id_patient = $request->id_patient;
            $result->prescription = $request->prescription;
            $result->description = $request->description;
            $result->content_result = $request->content_result;

            if($result->save()){
                $patient = Patient::where('id',$request->id_patient)->first();
                //send mail
                $data = [
                    'id'=>$patient->id,
                    'patient'=>$patient->name,
                    'prescription' => $result->prescription,
                    'content_result' => substr($result->content_result, 1, -1),
                ];

                Mail::to($patient->email)
                ->send(new sendMail($data));

                return redirect()->route('danhSachResult')->with('message', 'success');
            }

    }



    public function showUpdate($Id) {

        $result = Result::where('result.id', $Id)
        ->leftJoin('users', 'users.id', '=', 'result.id_doctor')
        ->leftJoin('patient', 'patient.id', '=', 'result.id_patient')
        ->select('result.*', 'users.name as doctorName', 'patient.name as patientName')
        ->first();

        // dd($result);
        return view('admin.result.editresult', compact('result'));

    }

    public function Update($id, Request $request) {

        $result = Result::find($id);

        $result->id_doctor = Auth::user()->id;
        $result->id_patient = $request->id_patient;
        $result->prescription = $request->prescription;
        $result->description = $request->description;
        $result->content_result = $request->content_result;

        if($result->save()){

            return redirect()->route('danhSachResult')->with('message', 'success');
        }
    }

    public function delete($id) {
        Result::destroy($id);
        return redirect()->route('danhSachResult');

    }
}
