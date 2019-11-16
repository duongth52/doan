<?php

namespace App\Http\Controllers;

use App\BacSi;
use App\Khoa;
use Illuminate\Http\Request;
class BacSiController extends Controller
{
    public function getALL()
    {
        $obj = BacSi::all();
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
            'email' => 'required|email|unique:bacsi,email|max:255',
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
        $dataUp = new BacSi;
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

        $dataUp->id = 1;
        $dataUp->name = $request->name;
        $dataUp->sdt = $request->phone;
        $dataUp->email = $request->email;
        $dataUp->image = $pathImg;
        $dataUp->gioitinh = $request->gioitinh;
        $dataUp->diachi = $request->diachi;
        $dataUp->ngaysinh = $request->ngaysinh;
        $dataUp->gioitinh = $request->gioitinh;
        if($dataUp->save()){
            return redirect()->route('list')->with('message', 'success');
        }
    }

    public function edit($id)
    {

        $khoa = Khoa::all();

        $find = BacSi::findOrFail($id);

        return view('admin.bacsi.suanhanvien', compact('find', 'khoa'));
        //$model = BacSi::find($id);
    }

    public function update($id, Request $request)
    {
        $dataUp = BacSi::find($id);
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
        BacSi::destroy($id);
        return redirect('/danh-sach-nhan-vien');
    }
}
