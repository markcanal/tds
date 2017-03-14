<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

class MaterialController extends Controller
{
   public function index(){

   	return view('material.material');
   }
}
