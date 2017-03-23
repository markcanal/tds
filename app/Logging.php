<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Logging extends Model
{
    protected $primaryKey ='user_id';
    protected $table='app_log';

    public static function  log($id ,$module,$activity){
    	$log = new Logging;
    	$log->user_id 	=	$id;
    	$log->module 	=	$module;
    	$log->activity	= 	$activity;
    	$log->save();
    }
}
