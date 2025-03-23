<?php

use App\Http\Controllers\StudentController;
use Illuminate\Support\Facades\Route;

Route::get('/gioithieu', [StudentController::class, 'gioithieu']);
Route::get('/blog', [StudentController::class, 'blog']);
Route::get('/taikhoan', [StudentController::class, 'taikhoan']);
//Bài 1
Route::get('/', [StudentController::class, 'index']);
Route::get('/lienhe', [StudentController::class, 'lienhe']);

//Bài 3
Route::get('/student', [StudentController::class, 'student']);
