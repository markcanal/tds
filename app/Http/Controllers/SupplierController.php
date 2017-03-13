<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests;
use Illuminate\Support\Facades\Auth;
class SupplierController extends Controller
{
    public function index(){
    	if(!Auth::check()){
    		return redirect()->route('index');
    	}
    	$suplier="SELECT sname Name,
		(CASE WHEN scontact_email IS NOT NULL AND scontact_tel IS NOT NULL AND scontact_fax IS NOT NULL THEN
		CONCAT('Email: ',scontact_email,' Tel#: ',scontact_tel,' Fax#: ',scontact_fax)
		WHEN scontact_email IS NOT NULL AND scontact_email<>'' 
		AND scontact_tel IS NOT NULL AND scontact_tel<>'' THEN CONCAT('Tel#: ',scontact_tel,' Email: ',scontact_email)
		WHEN scontact_tel IS NOT NULL AND scontact_tel<>'' THEN CONCAT('Tel#: ',scontact_tel,'')
		ELSE '' END)contact,
		(CASE WHEN scontact_person IS NOT NULL AND scontact_person <>'' AND scontact_person_title IS NOT NULL THEN CONCAT(scontact_person,' ,',scontact_person_title)
		WHEN scontact_person IS NOT NULL THEN scontact_person
		ELSE '' END)person,
		(CASE WHEN saddress IS NOT NULL AND scity IS NOT NULL THEN CONCAT(saddress,' ',scity)
 		WHEN saddress IS NOT NULL THEN saddress ELSE''END) saddress FROM supplier_table;

		";

    	$supl= DB::select(DB::raw($suplier));

    	return view('supplier.supplier')->with('supl',$supl);
    }

    public function add(Request $request){
    	return view('');
    }
    public function edit(Request $request){

    }
}
