<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Reply extends Model
{
    protected $guarded = [
        'id'
    ];
    protected static function boot()
    {
        parent::boot();
        static::creating(function($reply){
            $reply->user_id = auth()->id();
        });
    }
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
