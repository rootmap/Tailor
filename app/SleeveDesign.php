<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class SleeveDesign extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];
}
