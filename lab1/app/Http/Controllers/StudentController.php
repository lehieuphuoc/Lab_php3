<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;

class StudentController extends Controller
{
    //Bài 1
    public function blog(){
        echo "TRANG LIÊN HỆ";
    }
    public function gioithieu(){
        echo "TRANG GIỚI THIỆU";
    }
    
    //Bài 2
    public function index(){
        return view('home');
    }
    public function lienhe(){
        return view('lienhe');
    }

    //Bài 3
    public function student(){
        $student = [
                    'school' => 'Cao đẳng fpt polytechnic Thanh Hoá' ,
                    'name' => 'Lê Hiểu Phước',
                    'email' => 'lehieuphuoc35205@gmail.com',
                    'class' => 'WD19301'
                ];
        return view('student', compact('student'));
    }

    

}
