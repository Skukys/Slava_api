<?php

namespace App\Http\Controllers;

use App\Http\Resources\UserResource;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class UserController extends Controller
{
    public function register(Request $request)
    {
        $validation = Validator::make($request->all(), [
            'login' => 'unique:users,login|required',
            'password' => 'required'
        ]);

        if ($validation->fails())
            return $this->validationError($validation->errors());

        $path = null;
        $bio = $request->bio ? $request->bio : null;
        if ($request->photo)
            $path = $request->file('photo')->store('public');

        User::create([
            'login' => $request->login,
            'password' => Hash::make($request->password),
            'photo' => $path,
            'bio' => $bio
        ]);

        return response([
            'body' => [
                'message' => 'success register'
            ]
        ]);
    }

    public function login(Request $request)
    {
        $validation = Validator::make($request->all(), [
            'login' => 'required',
            'password' => 'required'
        ]);

        if ($validation->fails())
            return $this->validationError($validation->errors());

        $user = User::where('login', $request->login)->first();
        $password = $user->password;
        if ($user && Hash::check($request->password, $password)) {
            return response([
                'body' => [
                    'token' => $user->genereateToken(),
                    'message' => 'success login'
                ]
            ]);
        }
        return response([
            'body' => [
                'message' => 'User or password is incorrect'
            ]
        ], 402);
    }

    public function logout(Request $request)
    {
        $request->user->logout();
        return response([
            'body' => [
                'message' => 'success logout'
            ]
        ]);
    }

    public function info(Request $request)
    {
        return response([
            'body' => [
                'user' => UserResource::make($request->user)
            ]
        ]);
    }

    public function search(Request $request)
    {
        $value = $request->value;
        $users = User::where('login', 'like', '%' . $value . '%')->get();
        return response([
            'body' => [
                'users' => UserResource::collection($users)
            ]
        ]);
    }
}
