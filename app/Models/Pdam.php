<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PDAM extends Model
{
    use HasFactory;
    protected $table = 'pdams';
    public function districts ()
    {
        return $this->belongsTo(District::class);
    }
}
