<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Property extends Model
{
    use HasFactory;
    protected $table = 'property';
    protected $fillable = [
        'title', 'location', 'image_path', 'price', 'property_type', 'status',
        'area', 'beds', 'baths', 'garages', 'description', 'amenities', 'agent_id'
    ];

    public function description()
    {
        return $this->hasOne(Description::class);
    }
}


