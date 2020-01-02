<?php

namespace App\Http\Controllers;

use App\Articles;

class ClientHomeController extends Controller
{
    //
    public function home()
    {

        $article = Articles::select('*')->Where('categoryIds', 5)->take(3)->get();
        $news = Articles::select('*')->Where('categoryIds', 6)->take(6)->get();
        $doctors = Articles::select('*')->Where('categoryIds', 7)->take(6)->get();
        // dd($doctors);
        return view('trangchu', compact('article', 'news', 'doctors'));
    }
    
}
