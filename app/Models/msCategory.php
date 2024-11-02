<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class msCategory extends Model
{
    //
    protected $table = 'ms_categories';
    protected $fillable = ['category'];

    public function msPost(){
        return $this->hasMany(msPost::class, 'categoryId');
    }
}
