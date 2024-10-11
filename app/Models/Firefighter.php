<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Firefighter extends Model
{
    use HasFactory;
    protected $table = 'firefighters';
    public function districts ()
    {
        return $this->belongsTo(District::class);
    }
}
