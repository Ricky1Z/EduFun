<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\msPost as post;
use App\Models\msWriter as writer;

class popularController extends Controller
{
    //
    public function index(){
        $post = post::with('msWriter')->paginate(3);
        $writer = writer::all();
        return view('popular', compact('post'));
    }
}
