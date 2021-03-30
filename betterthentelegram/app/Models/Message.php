<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    protected $table = 'message';
    protected $fillable = ['text', 'chat_id', 'receiver', 'reply', 'sender'];

    public function rep()
    {
        return $this->hasOne(Message::class, 'id', 'reply')->first();
    }

    public function receiver()
    {
        return $this->hasOne(User::class, 'id', 'receiver')->first();
    }

    public function sender()
    {
        return $this->hasOne(User::class, 'id', 'sender')->first();
    }
    use HasFactory;
}
