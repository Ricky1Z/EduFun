<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\msWriter as writer;
use App\Models\msCategory as category;

class msPost extends Model
{
    //
    protected $table = 'ms_posts';
    protected $fillable = ['title', 'description', 'categoryId', 'writerId'];

    public function msWriter()
    {
        return $this->belongsTo(writer::class, 'writerId');
    }

    public function msCategory()
    {
        return $this->belongsTo(category::class, 'categoryId');
    }

}
