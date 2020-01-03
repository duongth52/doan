<?php
namespace App\Http\Controllers;
use App\Articles;
use App\Categoris;
use Illuminate\Http\Request;
class ArticleController extends Controller
{
    public function index()
    {
        $articles = Articles::leftJoin('categories', 'categories.id', '=', 'articles.categoryIds')
            ->select('articles.*', 'categories.name as categoriName')
            ->get();
        return view('admin.articles.danhsachbaiviet', compact('articles'));
    }
    public function showAdd()
    {
        $categori = Categoris::all();
        return view('admin.articles.thembaiviet', compact('categori'));
    }
    public function description()
    {
        return;
    }
    public function Create(Request $request)
    {
         $validatedData = $request->validate([
                'name' => 'required',
                'subDescription' => 'required',
                'categori' => 'required',
                'description' => 'required',

            ],
            [
                'name.required' => 'Bạn chưa nhập tên bài viết',
                'subDescription.required' => 'Bạn chưa nhập mô tả ngắn ',
                'description.required' => 'Bạn chưa nhập nội dung bài viết',
                
            ]
        );
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
        // dd($article);
        $categori = Categoris::all();
        return view('admin.articles.suabaiviet', compact('article', 'categori'));
    }
    public function showDetailBlog($id) {
        $article = Articles::findOrFail($id);
        return view('DetailBlog', compact('article'));
    }

    public function Update($id, Request $request)
    {
        $pathImg = '';
        $dataUp = Articles::find($id);
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            // lay ten file
            $namefile = $file->getClientOriginalName();
            // upload
            $file->move(public_path('uploads/categories/'), $namefile);
            $pathImg = "uploads/categories/" . $namefile;
        } else {
            $pathImg = $dataUp->images;
        }
        $dataUp->name = $request->name;
        $dataUp->description = $request->description;
        $dataUp->subDescription = $request->subDescription;
        $dataUp->categoryIds = $request->input('categori');
        $dataUp->images = $pathImg;
        $dataUp->save();
        return redirect()->route('danhSachCategori')->with('message', 'success');
    }
    public function delete($id)
    {
        Articles::destroy($id);
        return redirect('admin/danh-sach-bai-viet');
    }
}
