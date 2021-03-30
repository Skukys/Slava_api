<?php

namespace App\Http\Middleware;

use App\Models\User;
use Closure;
use Illuminate\Http\Request;

class checkAuth
{
    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        $token = $request->bearerToken();
        $user = User::where('api_token', $token)->first();
        if ($user && $token) {
            $request->user = $user;
            return $next($request);
        }
        return response([
            'body' => [
                'message' => 'unauthorized'
            ]
        ],402);
    }
}
