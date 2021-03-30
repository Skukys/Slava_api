<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class MessageResource extends JsonResource
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
            'text' => $this->text,
            'sender' => UserResource::make($this->sender()),
            'receiver' => UserResource::make($this->receiver()),
            'reply' => MessageResource::make($this->rep()),
        ];
    }
}
