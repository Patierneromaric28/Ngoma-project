<?php

use App\Http\Controllers\AboutController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\HomeContoller;
use App\Http\Controllers\HomeController;
use Illuminate\Routing\RouteGroup;
use Illuminate\Support\Facades\Route;


Route::prefix('shalom')->group(function () {

});
Route::get('/',[HomeController::class, 'index' ])->name('index');

Route::get('/about',[AboutController::class, 'about' ])->name('about');
Route::get('/',[HomeController::class, 'index' ])->name('index');

Route::get('/about',[AboutController::class, 'about' ])->name('about');

