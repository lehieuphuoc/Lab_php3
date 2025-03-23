<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\News;

class newsController extends Controller
{
    public function index(){
        return view('news');
    }

    public function getNews() {
        $news = news::orderBy('id', 'desc')->limit(10)->get();
        return view('xemnhieu', compact('news'));
    }
    public function getNewsHot(){
        $news_hot = news::orderBy('created_at', 'desc')->limit(5)->get();
        return view('tinmoi', compact('news_hot'));
    }
    public function news($id){
        $new = news::find($id);
        return view('chitiet', compact('new'));
    }

    public function getNewsCate(){
        $news = news::where('category', 2)->orderBy('created_at', 'desc')->get();
        return view('tintheoloai', compact('news'));
    }

   
}
