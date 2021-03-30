<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class User extends Model
{
    protected $table = 'users';
    protected $fillable = ['login', 'password', 'api_token', 'bio', 'photo'];
    use HasFactory;

    public function genereateToken()
    {
        $token = Str::uuid();
        $this->api_token = $token;
        $this->save();
        return $token;
    }

    public function logout()
    {
        $this->api_token = null;
        $this->save();
    }

    public function chat($receiver)
    {
        $chat = Chat::where('user_id_1', $receiver)
            ->where('user_id_2', $this->id)
            ->first();

        if(!$chat)
            $chat = Chat::where('user_id_1', $this->id)
                ->where('user_id_2', $receiver)
                ->first();
        if(!$chat){
            $chat = Chat::create([
                'user_id_1' => $this->id,
                'user_id_2' => $receiver
            ]);
            return $chat->id;
        }
        return $chat->id;
    }
}
