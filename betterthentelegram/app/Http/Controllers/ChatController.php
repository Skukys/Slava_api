<?php

namespace App\Http\Controllers;

use App\Http\Resources\ChatResource;
use App\Http\Resources\MessageResource;
use App\Models\Chat;
use App\Models\Message;
use Illuminate\Http\Request;

class ChatController extends Controller
{
    public function get(Request $request)
    {
        $chat = Chat::where('user_id_1', $request->user->id)
            ->orWhere('user_id_2', $request->user->id)
            ->get();

        return response([
            'body' => [
                'chats' => ChatResource::collection($chat)
            ]
        ]);
    }

    public function getMessages(Request $request, Chat $chat)
    {
        $messages = Message::where('chat_id', $chat->id)->paginate(10);
        return response([
            'body' => [
                'messages' => MessageResource::collection($messages)
            ]
        ]);
    }
}
