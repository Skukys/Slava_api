<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ChatResource extends JsonResource
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
            'user_1' => UserResource::make($this->user1()),
            'user_2' => UserResource::make($this->user2()),
            'message' => MessageResource::make($this->lastMessage())
        ];
    }
}
