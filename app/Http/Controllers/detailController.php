<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\msPost as post;
use App\Models\msWriter as writer;

class detailController extends Controller
{
    //
    public function index($id){
        $post = post::with('msWriter')->find($id);
        return view('detail', compact('post'));
    }
}
