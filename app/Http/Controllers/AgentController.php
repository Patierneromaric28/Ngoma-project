<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AgentController extends Controller
{
    //agent grid function
    public function agent_grid(){
        return view('agents-grid');
    }

    //agent single function
    public function agent_single(){
        return view('agent-single');
    }
}
