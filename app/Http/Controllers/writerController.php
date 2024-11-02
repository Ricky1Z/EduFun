<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\msWriter as writer;

class writerController extends Controller
{
    //
    public function index(){
        $writer = writer::all();
        return view('writer', compact('writer'));
    }
}
