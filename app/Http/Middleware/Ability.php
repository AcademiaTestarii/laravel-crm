<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class Ability
{
    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure $next
     * @return mixed
     */
    public function handle($request, Closure $next, $permission)
    {
        $user = auth()->user();

        if (!($user->roles->isEmpty())
            && in_array($permission, $user->permissions())
            && 'trainer-provider' == $user->roles->toArray()[0]['code']
        ) {
            return $next($request);
        }

        if (!is_null($user)) {
            return redirect()->route('blank-dashboard');
        }

        return redirect()->route('login');
    }
}
