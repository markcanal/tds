<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

class UserController extends Controller
{
    public function home(){
    	return view('dashboard.dashboard');
    }
    
}
