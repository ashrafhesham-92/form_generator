<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class list extends Model
{
    //
    public function headers_list(){
    	return $this->hasMany('App\header');
    }

    public function rows(){
    	return $this->hasMany('App\row');
    }

    public function procs(){
    	return $this->belongsToMany('App\procs');
    }
}
