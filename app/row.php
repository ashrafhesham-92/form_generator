<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class row extends Model
{
    //

    public function cells(){
    	return $this->hasMany('App\cell');
    }

    public function procs(){
    	return $this->belongsToMany('App\procs');
    }
}
