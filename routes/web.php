<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\CategoryController;

// Trang chủ
// Route::get('/', [HomeController::class, 'index'])->name('home.index');
Route::get('/', [HomeController::class, 'index'])->name('home.index');

// // Auth Routes
// Route::get('/dang-nhap', [AuthController::class, 'login'])->name('auth.login');
// Route::post('/dang-nhap', [AuthController::class, 'postLogin'])->name('auth.postLogin');
// Route::get('/dang-ky', [AuthController::class, 'register'])->name('auth.register');
// Route::post('/dang-ky', [AuthController::class, 'postRegister'])->name('auth.postRegister');
// Route::get('/dang-xuat', [AuthController::class, 'logout'])->name('auth.logout');
// Route::get('/activate/{token}', [AuthController::class, 'activate'])->name('auth.activate');
// Route::get('/quen-mat-khau', [AuthController::class, 'forgotPassword'])->name('auth.forgotPassword');
// Route::post('/quen-mat-khau', [AuthController::class, 'postForgotPassword'])->name('auth.postForgotPassword');
// Route::get('/reset-password/{token}', [AuthController::class, 'resetPassword'])->name('auth.resetPassword');
// Route::post('/reset-password', [AuthController::class, 'postResetPassword'])->name('auth.postResetPassword');


Route::get('/forgot-password', [AuthController::class, 'showForgotPasswordForm'])->name('auth.forgotPassword');
Route::post('/forgot-password', [AuthController::class, 'sendResetLink'])->name('auth.postForgotPassword');

Route::get('/register', [AuthController::class, 'showRegisterForm'])->name('auth.register');
Route::post('/register', [AuthController::class, 'postRegister'])->name('auth.postRegister');

Route::get('/login', [AuthController::class, 'showLoginForm'])->name('auth.login');
Route::post('/login', [AuthController::class, 'postLogin'])->name('auth.postLogin');
Route::post('/logout', [AuthController::class, 'logout'])->name('auth.logout');

// Route::get('/forgot-password', [AuthController::class, 'showForgotPasswordForm'])->name('auth.forgot_password');
// Route::post('/forgot-password', [AuthController::class, 'sendResetPasswordEmail'])->name('auth.postForgotPassword');
Route::get('/reset-password/{token}', [AuthController::class, 'showResetPasswordForm'])->name('auth.reset_password');
Route::post('/reset-password', [AuthController::class, 'resetPassword'])->name('auth.postResetPassword');

Route::get('/activate/{token}', [AuthController::class, 'activateAccount'])->name('auth.activate');

// Chi tiết tin
Route::get('/tin-tuc/{id}', [NewsController::class, 'detail'])->name('news.detail');

// Tin trong loại
Route::get('/loai-tin/{category}', [NewsController::class, 'newsCate'])->name('news.newsCate');

// Tìm kiếm
Route::get('/tim-kiem', [NewsController::class, 'search'])->name('news.search');

// Quản trị loại tin
Route::get('/admin/loai-tin', [CategoryController::class, 'index'])->name('category.index');
Route::get('/admin/loai-tin/them', [CategoryController::class, 'create'])->name('category.create');
Route::post('/admin/loai-tin/them', [CategoryController::class, 'store'])->name('category.store');
Route::get('/admin/loai-tin/sua/{id}', [CategoryController::class, 'edit'])->name('category.edit');
Route::post('/admin/loai-tin/sua/{id}', [CategoryController::class, 'update'])->name('category.update');
Route::get('/admin/loai-tin/xoa/{id}', [CategoryController::class, 'delete'])->name('category.delete');

// Quản trị tin
Route::get('/admin/tin-tuc', [NewsController::class, 'index'])->name('news.index');
Route::get('/admin/tin-tuc/them', [NewsController::class, 'create'])->name('news.create');
Route::post('/admin/tin-tuc/them', [NewsController::class, 'store'])->name('news.store');
Route::get('/admin/tin-tuc/sua/{id}', [NewsController::class, 'edit'])->name('news.edit');
Route::post('/admin/tin-tuc/sua/{id}', [NewsController::class, 'update'])->name('news.update');
Route::get('/admin/tin-tuc/xoa/{id}', [NewsController::class, 'delete'])->name('news.delete');
