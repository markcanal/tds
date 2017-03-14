<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;
use Illuminate\Routing\Route;
use App\Http\Requests;
use App\Logging;

class UserController extends Controller
{
    public function home(){
    	if(!Auth::check()){
    		return redirect()->route('index');
    	}
    	$username = Auth::user()->name;

    	//data

    	$d_data="select p_id,p_description,p_name,b.sname from product  a
    			left join supplier_table b on a.sup_id = b.id";
    		$sup =	DB::select(DB::raw($d_data));

    	return view('dashboard.dashboard')->with('sup',$sup);
    }
    public function logout(){
    	Auth::logout();
    	Session::flush();
    	return redirect()->route('index');
    }
    public function department(){
        return view ('mechanics.file');
    }
}
