<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\msWriter as writer;
use App\Models\msPost as post;

class writerDetailController extends Controller
{
    public function index($id){
        $writer = writer::with('msPost')->find($id);
        $post = post::with('msWriter')->where('writerId', $id)->get();
        return view('writerDetail', compact('writer', 'post'));
    }
}
