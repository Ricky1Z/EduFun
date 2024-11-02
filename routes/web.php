<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\homeController;
use App\Http\Controllers\categoryController;
use App\Http\Controllers\detailController;
use App\Http\Controllers\writerController;
use App\Http\Controllers\writerDetailController;
use App\Http\Controllers\popularController;

Route::get('/', function () {
    return view('welcome');
});

Route::prefix('/user')->group(function(){
    Route::get('/home', [homeController::class, 'index'])->name('home');

    Route::get('/aboutUs', function(){
        return view('aboutUs');
    })->name('aboutUs');

    Route::get('/category/{subject}', [categoryController::class, 'index'])->name('category');

    Route::get('/detail/{id}', [detailController::class, 'index'])->name('detail');

    Route::get('/writer', [writerController::class, 'index'])->name('writer');

    Route::get('/writerDetail/{id}', [writerDetailController::class, 'index'])->name('writerDetail');

    Route::get('/popular', [popularController::class, 'index'])->name('popular');

});

