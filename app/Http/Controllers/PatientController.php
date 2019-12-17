<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Patient;
use App\Result;

class PatientController extends Controller
{

    public function index() {
        $patient = Patient::all();
        return view('admin.benhnhan.danhsachbenhnhan', compact('patient'));
    }

    public function thembenhnhan() {
        return view('admin.benhnhan.thembenhnhan');
    }

    public function create(Request $request) {
        $validatedData = $request->validate([
            'email' => 'required|email|unique:users,email|max:255',
            'name' => 'required',
            'phone' => 'required|min:11|max:11',
            'birthday' => 'required',
        ],
        [
            'email.required' => 'Bạn chưa nhập email',
            'email.email'   => 'Email sai định dạng.',
            'email.unique'  => 'Email này đã tồn tại.',
            'name.required' => 'Bạn chưa nhập tên.',
            'phone' => 'required|min:10|max:11',
            'birthday.required' => 'Ngày sinh không được trống.'
        ]);

        $dataCreate = new Patient;
        $dataCreate->name = $request->name;
        $dataCreate->phone = $request->phone;
        $dataCreate->email = $request->email;
        $dataCreate->gender = $request->gender;
        $dataCreate->address = $request->address;
        $dataCreate->birthday = $request->birthday;
        $dataCreate->description = $request->description;
        $dataCreate->password = Hash::make($request->email);

        if($dataCreate->save()){
            return redirect()->route('danhsachbenhnhan')->with('message', 'success');
        }
    }

    public function edit($id) {
        $patient = Patient::findOrFail($id);
        return view('admin.benhnhan.suabenhnhan', compact('patient'));
    }

    public function update($id, Request $request) {

        $dataUp = Patient::find($id);
        $dataUp->name = $request->name;
        $dataUp->phone = $request->phone;
        $dataUp->email = $request->email;
        $dataUp->address = $request->address;
        $dataUp->birthday = $request->birthday;
        $dataUp->gender = $request->gender;
        $dataUp->description = $request->description;

        if ($dataUp->save()) {
            return redirect()->route('danhsachbenhnhan')->with('message', 'success');
        }
    }

    public function delete($id) {
        Patient::destroy($id);
        return redirect('admin/danh-sach-benh-nhan');
    }
    public function detail($id) {
        $patient = Patient::findOrFail($id);
        $result = Result::where('id_patient', $id)->get();
        return view('admin.benhnhan.detail', compact('patient','result'));
    }
}
