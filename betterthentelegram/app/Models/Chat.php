<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Chat extends Model
{
    protected $table = 'chats';
    protected $fillable = ['user_id_1', 'user_id_2'];

    public function user1()
    {
        return $this->hasOne(User::class, 'id', 'user_id_1')->first();
    }

    public function user2()
    {
        return $this->hasOne(User::class, 'id', 'user_id_2')->first();
    }

    public function lastMessage()
    {
        $messages =  $this->hasOne(Message::class, 'chat_id', 'id')->get();
        $message = $messages[count($messages) - 1];
        return $message;
    }

    use HasFactory;
}
