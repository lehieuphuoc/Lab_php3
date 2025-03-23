<?php

use App\Http\Controllers\NewsController;
use Illuminate\Support\Facades\Route;

Route::get('/', [NewsController::class, 'index'])->name('news.index');
Route::get('/news/{id}', [NewsController::class,'show'])->name('news.show');
Route::get('/newscate/{category}', [NewsController::class, 'newsCate'])->name('news.newsCate');


