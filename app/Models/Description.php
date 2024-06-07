<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Description extends Model
{
    use HasFactory;

    protected $fillable = [
        'property_id', 'description', 'agent_name', 'agent_description', 'agent_phone',
        'agent_mobile', 'agent_email', 'agent_skype', 'agent_image', 'agent_facebook',
        'agent_twitter', 'agent_instagram', 'agent_linkedin', 'longitude', 'latitude'
    ];

    public function property()
    {
        return $this->belongsTo(Property::class);
    }
}
