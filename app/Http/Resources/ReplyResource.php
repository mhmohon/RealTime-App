<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ReplyResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'content' => $this->content,
            'question' => $this->question->title,
            'user' => $this->user->name,
            'user_id' => $this->user->id,
            'like_count' => $this->like->count(),
            'liked' => !! $this->like->where('user_id', auth()->id())->count(),
            'created_at' => $this->created_at->diffForhumans(),
        ];
    }
}
