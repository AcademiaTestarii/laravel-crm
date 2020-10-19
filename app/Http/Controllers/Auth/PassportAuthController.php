<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;

class PassportAuthController extends Controller
{
    public function getRegister()
    {
        return view('auth.register');
    }

    public function postRegister(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|min:6|confirmed',
        ]);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password)
        ]);

        return redirect()->route('login');
    }


    public function getLogin()
    {
        if (!is_null(auth()->user())) {
            return redirect()->route('dashboard');
        }

        return view('auth.login');
    }

    public function postLogin(Request $request)
    {
        $loginData = $request->validate([
            'email' => 'email|required',
            'password' => 'required'
        ]);

        if (!auth()->attempt($loginData)) {
            return redirect()->route('login');
        }

        auth()->user()->createToken('AcademiaTestarii')->accessToken;

        return redirect()->route('dashboard');
    }

    public function logOut()
    {
        auth()->logout();

        return redirect('/login');
    }
}
