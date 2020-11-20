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
        if (!(Auth::user()->roles->isEmpty()) && in_array($permission, Auth::user()->permissions())) {
            return $next($request);
        }

        if (!is_null(Auth::user())) {
            return redirect()->route('blank-dashboard');
        }

        return redirect()->route('login');
    }
}
