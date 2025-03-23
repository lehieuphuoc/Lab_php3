<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index(){
        $category = 'All Products';
        $products = [
            ['name' => 'Product 1', 'price' => 100],
            ['name' => 'Product 2', 'price' => 200],
            ['name' => 'Product 3', 'price' => 300],
            ['name' => 'Product 4', 'price' => 400],
            ['name' => 'Product 5', 'price' => 500],
        ];
        return view('products', compact('category', 'products'));
    }
}
