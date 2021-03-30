<?php

namespace App\Http\Controllers;

use App\Models\Chat;
use App\Models\Message;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class MessageController extends Controller
{
    public function send(Request $request)
    {
        $validation = Validator::make($request->all(), [
            'text' => 'required',
            'receiver' => 'required|exists:users,id',
            'sender' => 'required|exists:users,id',
            'reply' => 'extend:message,id'
        ]);

        if ($validation->fails())
            return $this->validationError($validation->errors());

        $reply = $request->reply ? $request->reply : null;

        if ($request->chat_id)
            $this->create($request, $reply, $request->chat_id);

        $user = User::find($request->sender);
        if ($id = $user->chat($request->receiver))
            $this->create($request, $reply, $id);


        return response([
            'body' => [
                'message' => 'success send'
            ]
        ]);
    }

    public function create($request, $reply, $chat_id)
    {
        Message::create([
            'text' => $request->text,
            'receiver' => $request->receiver,
            'sender' => $request->sender,
            'reply' => $reply,
            'chat_id' => $chat_id
        ]);
    }
}
