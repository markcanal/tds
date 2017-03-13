<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

/*use App\Http\Requests;*/

use Illuminate\Support\Facades\Auth;
use App\User;

class AuthController extends Controller
{
	
    public function index(){
    		if(!Auth::check()){
    			return view('auth.login');
    		}
    			return redirect()->route('dashboard');
    			
    }
    public function reg_user(){
    		return view('auth.register');
    }
    public function reg_user_save(Request $request){
    	$this->validate($request,
    		[
    		'username'			=>	'required|min:2|max:16',
    		'email'				=>	'required|unique:users',
    		'password'			=>	'required|min:4|max:16',	
    		'repeat_password'	=>	'required|same:password',
    		]);
    	$user = new User;
    	$user->user_name = $request['username'];
    	$user->email 	= $request['email'];
    	$user->password = bcrypt($request['password']);
    	$user->save();

    	$args=array('info'=> 'You Have Been Registered');
    	return redirect()->back()->with($args);

    }
    public function login(Request $request){
    	$this->validate($request,
    		[
    		'username'			=>	'required|min:2|max:16',
    		'password'				=>	'required|min:2|max:16',
    		]);
    	if (Auth::attempt(['user_name' => $request['username'],'password'=>$request['password']])){
    		return redirect()->route('index');
    	}else{
    		return redirect()->back()->with($ist =array('info'=>'Invalid Combination of username and password'));
    	}
    }
    public function isAdmin(){

    }
    public function getRole(){

    }
    
}
