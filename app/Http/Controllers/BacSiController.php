<?php

namespace App\Http\Controllers;

// use App\User;

use App\Khoa;
use App\User;
use Illuminate\Http\Request;
class BacSiController extends Controller
{
    public function getALL()
    {
        $obj = User::all();
        return view('admin.bacsi.danhsachnhanvien', compact('obj'));
    }

    public function getAdd()
    {
        $khoa = Khoa::all();
        return view('admin.bacsi.themnhanvien', compact('khoa'));
    }

    public function postAdd(Request $request)
    {


        $validatedData = $request->validate([
            'email' => 'required|email|unique:users,email|max:255',
            'name' => 'required',
            'phone' => 'required|min:11|max:11',
            // 'image' => 'required|mimes:jpeg,bmp,png',
            'ngaysinh' => 'required',
        ],
        [
            'email.required' => 'Bạn chưa nhập email',
            'email.email'   => 'Email sai định dạng.',
            'email.unique'  => 'Email này đã tồn tại.',
            'name.required' => 'Bạn chưa nhập name.',
            'phone' => 'required|min:10|max:11',
            // 'image.mimes'   => 'Avatar chưa đúng định dạng.',
            'ngaysinh.required' => 'Ngày sinh không được trống.'
        ]);

        $pathImg = '';

        $dataUp = new User;
        $namefile = '';
        if ($request->hasFile('avatar')) {

            $file = $request->file('avatar');

            // lay ten file
            $namefile = $file->getClientOriginalName();

            if ($file->getError() == 0) {
                // upload
                if ($file->move(public_path('uploads/doctors/avata/'), $namefile)) {
                    $pathImg = "uploads/doctors/avata/" . $namefile;
                }
            }
        }

        $dataUp->name = $request->name;
        $dataUp->phone = $request->phone;
        $dataUp->email = $request->email;
        $dataUp->image = $pathImg;
        // $dataUp->gender = $request->gioitinh;
        $dataUp->address = $request->diachi;
        $dataUp->birthday = $request->ngaysinh;
        if($dataUp->save()){
            return redirect()->route('danhsachnhanvien')->with('message', 'success');
        }
    }

    public function edit($id)
    {

        $khoa = Khoa::all();

        $find = User::findOrFail($id);

        return view('admin.bacsi.suanhanvien', compact('find', 'khoa'));
    }

    public function update($id, Request $request)
    {
        $dataUp = User::find($id);
        $dataUp->name = $request->name;
        $dataUp->sdt = $request->phone;
        $dataUp->email = $request->email;
        $dataUp->image = $request->image;
        $dataUp->diachi = $request->diachi;
        $dataUp->ngaysinh = $request->ngaysinh;
        $dataUp->gioitinh = $request->gioitinh;

        if ($dataUp->save()) {
            return redirect()->route('danhsachnhanvien')->with('message', 'success');
        }
    }

    public function delete($id)
    {
        User::destroy($id);
        return redirect('/danh-sach-nhan-vien');
    }
}
