<?php

use App\Http\Controllers\AboutController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\AgentController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\HomeContoller;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PropertyController;
use App\Http\Controllers\{
    AuthController,
    PropertySearchController

};
use Illuminate\Routing\RouteGroup;
use Illuminate\Support\Facades\Route;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;

Route::prefix('shalom')->group(function () {

});

Route::get('/', [HomeController::class, 'index' ])->name('index');

Route::get('/about',[AboutController::class, 'about' ])->name('about');
//Route::get('/',[HomeController::class, 'index' ])->name('index');

// Route::get('/about', [AboutController::class, 'about' ])->name('about');

Route::get('/contact',[HomeController::class, 'contact'])->name('contact');

Route::get('/property-single/{id}', [PropertyController::class, 'singleProperty'])->name('property-single/{$id}');

//blog route
Route::get('/blog-grid',[BlogController::class, 'blog'])->name('blog');
Route::get('/blog-single',[BlogController::class, 'blog_single'])->name('blog_single');

// property route
Route::get('/property',[PropertyController::class, 'property'])->name('property');
// Route::get('/property-single',[PropertyController::class, 'property_single'])->name('property_single');
Route::get('/property-grid',[PropertyController::class, 'property_grid'])->name('property_grid');

// agent controller
Route::get('/agents-grid',[AgentController::class, 'agent_grid'])->name('agent_grid');
Route::get('/agent-single',[AgentController::class, 'agent_single'])->name('prperty_sing');

//login
Route::get('/login',[AuthController::class, 'login'])->name('login');
Route::get('register',[AuthController::class, 'register'])->name('register');

Route::post('store/user',[AuthController::class, 'store'])->name('storeuser.register');
Route::post('login/user',[AuthController::class, 'checkLogin'])->name('login.user');
Route::get('logout', [AuthController::class, 'logout'])->name('user.logout');
Route::post('admin/login', [AdminController::class, 'adminLogin'])->name('admin.checklogin');
//searchadmin.checklogin

Route::get('/search', [PropertySearchController::class, 'search'])->name('search.property');
// Dashboard routes
Route::get('/admin/login',[AdminController::class, 'index'])->name('admin.index');
Route::get('/Admin',[AdminController::class, 'index'])->name('Dashboard.index');
Route::get('Dashboard', [AdminController::class, 'dashboard'])->name('Dashboard');
