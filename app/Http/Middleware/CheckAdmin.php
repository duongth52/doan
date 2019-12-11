<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class CheckAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Auth::check() || Auth::user() == 'superadmin' || Auth::user() == 'admin' || Auth::user() == 'user'){
            return $next ($request);
        }
        else{
            return redirect(route('showLogin'));
        }

    }
}
