<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Property extends Model
{
    use HasFactory;
    protected $fillable = [
        'city',
        'user_id',
        'price',
        'area',
        'beds',
        'baths',
        'garage',
        'location',
        'status',
        'batch',
    ];
}


