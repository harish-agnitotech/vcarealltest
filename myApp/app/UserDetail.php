<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserDetail extends Model
{
    protected $fillable = [
        'father', 'mother', 'wife', 'child', 'address'
    ];
}