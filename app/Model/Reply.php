<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Reply extends Model
{
    protected $guarded = [
        'id'
    ];
    public function user()
    {
        return $this->belongsTo('App\User');
    }
    public function like()
    {
        return $this->hasMany(Like::class);
    }
    public function question()
    {
        return $this->belongsTo(Question::class);
    }
}
