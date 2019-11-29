<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Articles;
use App\Categoris;

class ArticleController extends Controller {

    public function index() {
        $articles = Articles::leftJoin('categories', 'categories.id', '=', 'articles.categoryIds')
            ->select('articles.*', 'categories.name as categoriName')
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

    public function Create(Request $request)
    {
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

        if ($dataCreate->save()) {
            return redirect()->route('danhSachArticle')->with('message', 'success');
        }
    }



    public function showUpdate($id)
    {
        $article = Articles::findOrFail($id);
        $categori = Categoris::all();
        return view('admin.articles.suabaiviet', compact('article', 'categori'));
    }

    public function Update($id, Request $request)
    {
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
            return redirect()->route('danhSachCategori')->with('message', 'success');
        }
    }

    public function delete($id)
    {
        Categori::destroy($id);
        return redirect('/danh-sach-danh-muc');
    }

}
