<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pln extends Model
{
    use HasFactory;
    protected $table = 'plns';
    public function districts ()
    {
        return $this->belongsTo(District::class);
    }
}
