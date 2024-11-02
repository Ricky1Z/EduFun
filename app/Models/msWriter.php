<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\msPost as post;

class msWriter extends Model
{
    //
    protected $table = 'ms_writers';
    protected $fillable = ['name', 'specialist'];

    public function msPost()
    {
        return $this->hasMany(post::class, 'writerId');
    }
}
