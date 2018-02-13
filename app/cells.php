<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class cells extends Model
{
    //

    public function procs(){
    	return $this->belongsToMany('App\procs');
    }
}
