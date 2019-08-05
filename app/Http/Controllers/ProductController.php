<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\helpers\Visitor;
use App\helpers\Logs;
use Alert;

class ProductController extends Controller
{
    public function __construct()
    {
        Visitor::create();
    }

    public function index()
    {
        $products   =   Product::all();
        
    }

    public function store(Request $request)
    {
        $product    =   new Product;
         
    }
}
