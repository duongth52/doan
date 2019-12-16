<?php

namespace App\Http\Controllers;
use App\Result;

use Illuminate\Http\Request;

class ResultController extends Controller
{
    public function listResult() {
        $result = Result::all();
        return view('admin.result.listresult', compact('result'));
    }

    public function showAdd() {
        return view('admin.result.addresult');
    }

    public function Create(Request $request){

    }


    public function showUpdate($id) {
    }

    public function Update($id, Request $request)
    {

    }

    public function delete($id) {

    }
}
