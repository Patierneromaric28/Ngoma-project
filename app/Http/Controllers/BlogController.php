<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BlogController extends Controller
{
        // blog function
        public function blog(){
            return view('blog-grid');
        }
    
        //blog single
        public function blog_single(){
            return view('blog-single');
        }
}
