<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Categoris as Categori;

class CategoriController extends Controller
{

    public function index() {
        $categori = Categori::all();
        return view('admin.categories.danhsachdanhmuc', compact('categori'));
    }

    public function showAdd() {
        return view('admin.categories.themdanhmuc');
    }

    public function Create(Request $request) {

        $pathImg = '';

        $dataCreate = new Categori;
        $namefile = '';
        if ($request->hasFile('image')) {

            $file = $request->file('image');
            // lay ten file
            $namefile = $file->getClientOriginalName();

            if ($file->getError() == 0) {
                // upload
                if ($file->move(public_path('uploads/categories/'), $namefile)) {
                    $pathImg = "uploads/categories/" . $namefile;
                }
            }
        }
        $dataCreate->name = $request->name;
        $dataCreate->description = $request->description;
        $dataCreate->images = $pathImg;

        if($dataCreate->save()){
            return redirect()->route('danhSachCategori')->with('message', 'success');
        }
    }

    public function showUpdate($id) {
        $categori = Categori::findOrFail($id);
        return view('admin.categories.suadanhmuc', compact('categori'));
    }

    public function Update($id, Request $request ) {
        $pathImg = '';
        $dataUp = Categori::find($id);

        if ($request->hasFile('image')) {

            $file = $request->file('image');
            // lay ten file
            $namefile = $file->getClientOriginalName();

            if ($file->getError() == 0) {
                // upload
                if ($file->move(public_path('uploads/categories/'), $namefile)) {
                    $pathImg = "uploads/categories/" . $namefile;
                }
            }
        }

        $dataUp->name = $request->name;
        $dataUp->description = $request->description;
        $dataUp->images = $pathImg;

        if ($dataUp->save()) {
            return redirect()->route('updateCategori')->with('message', 'success');
        }

    }

}
