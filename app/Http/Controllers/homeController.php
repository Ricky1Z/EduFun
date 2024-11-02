<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\msPost as post;
use App\Models\msWriter as writer;

class homeController extends Controller
{
    //
    public function index(){
        $post = post::all();
        $writer = writer::all();
        // dd($post);
        return view('home', compact('post'));
    }
}
