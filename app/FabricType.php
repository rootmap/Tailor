<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class FabricType extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];
}
