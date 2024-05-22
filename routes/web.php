<?php

use App\Http\Controllers\AboutController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\AgentController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\HomeContoller;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PropertyController;
use Illuminate\Routing\RouteGroup;
use Illuminate\Support\Facades\Route;


Route::prefix('shalom')->group(function () {

});
Route::get('/',[HomeController::class, 'index' ])->name('index');

Route::get('/about',[AboutController::class, 'about' ])->name('about');
//Route::get('/',[HomeController::class, 'index' ])->name('index');

Route::get('/about',[AboutController::class, 'about' ])->name('about');

Route::get('/contact',[HomeController::class, 'contact'])->name('contact');

//blog route
Route::get('/blog-grid',[BlogController::class, 'blog'])->name('blog');
Route::get('/blog-single',[BlogController::class, 'blog_single'])->name('blog_single');

// property route
Route::get('/property',[PropertyController::class, 'property'])->name('property');
Route::get('/property-single',[PropertyController::class, 'property_single'])->name('property_single');
Route::get('/property-grid',[PropertyController::class, 'property_grid'])->name('property_grid');
 
// agent controller
Route::get('/agents-grid',[AgentController::class, 'agent_grid'])->name('agent_grid');
Route::get('/agent-single',[AgentController::class, 'agent_single'])->name('prperty_sing');