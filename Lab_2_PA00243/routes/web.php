<?php

use App\Http\Controllers\newsController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/',[newsController::class, 'index'])->name('home.index');
Route::get('xemnhieu',[newsController::class, 'getNews'])->name('news.getNews');
Route::get('moinhat',[newsController::class, 'getNewsHot'])->name('news.getNewsHot');
Route::get('xemnhieu/tin/{id}',[newsController::class, 'news'])->name('news.news');
Route::get('tintheoloai/{category}', [newsController::class, 'getNewsCate'])->name('news.getNewsCate');
