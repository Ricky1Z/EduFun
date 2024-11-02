<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\msPost as post;
use App\Models\msWriter as writer;

class categoryController extends Controller
{
    //
    public function index($subject){
        $post = post::with('msCategory')->where('categoryId', $subject)->get();
        $writer = writer::all();

        $title="";

        if($subject==1) $title="Data Science";
        else if($subject==2) $title="Network Security";

        return view('category', compact('post', 'title'));
    }
}
