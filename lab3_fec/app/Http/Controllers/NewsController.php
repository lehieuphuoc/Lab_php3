<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\News;    

class NewsController extends Controller
{
    public function index(){
        $news = news::orderBy('id', 'asc')->get();
        return view('home', compact('news'));
    }
    public function show($id){
        $new = news::find($id);
        return view('show', compact('new'));
    }

    public function newsCate(){
        $newsCate = news::where('category' , 1)->orderBy('created_at', 'desc')->get();
        return view('newsCate', compact('newsCate'));
    }
}
