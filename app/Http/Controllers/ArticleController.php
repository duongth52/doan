<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Articles;
use App\Categoris;

class ArticleController extends Controller {

    public function index() {
        $articles = Articles::leftJoin('categories','categories.id','=','articles.categoryIds')
                ->select( 'articles.*', 'categories.name as categoriName')
                ->get();
        return view('admin.articles.danhsachbaiviet', compact('articles'));
    }

    public function showAdd() {
        $categori = Categoris::all();
        return view('admin.articles.thembaiviet', compact('categori'));
    }

    public function description() {
        return;
    }


    public function Create(Request $request) {

        dd($request);

        $pathImg = '';

        $dataCreate = new Articles();
        $namefile = '';
        if ($request->hasFile('image')) {

            $file = $request->file('image');
            // lay ten file
            $namefile = $file->getClientOriginalName();

            if ($file->getError() == 0) {
                // upload
                if ($file->move(public_path('uploads/articles/'), $namefile)) {
                    $pathImg = "uploads/articles/" . $namefile;
                }
            }
        }
        $dataCreate->name = $request->name;
        $dataCreate->subDescription = $request->subDescription;
        $dataCreate->images = $pathImg;
        $dataCreate->categoryIds = $request->categori;
        $dataCreate->description = $request->description;
        dd($dataCreate);
        if($dataCreate->save()){
            return redirect()->route('danhSachCategori')->with('message', 'success');
        }
    }

}
