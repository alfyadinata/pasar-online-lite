<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Promotion;
use Alert;
class PromotionController extends Controller
{
    public function index()
    {
        $promotions =   Promotion::latest()->get();
        return view('panel.promotion.index',compact('promotions'));
    }
    
    public function store(Request $request)
    {
        
    }
}
