<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Repositories\RoleRepository;
use App\Services\RegisterService;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    protected $roleRepository;

    public function __construct(RoleRepository $roleRepository)
    {
        $this->roleRepository = $roleRepository;
    }

    public function getRegister()
    {
        $roles = $this->roleRepository->getAllRolesExcept(['admin', 'trainer']);

        return view('auth.register')->with(['roles' => $roles]);
    }

    public function getPasswordReset()
    {
        return view('auth.passwords.reset');
    }

    public function postRegister(Request $request, RegisterService $registerService)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|min:6|confirmed',
            'role' => 'required|int'
        ]);

        $role = $this->roleRepository->findOneBy(['id' => $request->get('role')]);

        $registerService->register($role, [
            'name' => $request->name,
            'email' => $request->email,
            'password' => md5($request->password)
        ]);

        return redirect()->route('login');
    }

    public function postPasswordReset(Request $request, RegisterService $registerService)
    {
        $validatedData = $request->validate([
            'email' => 'required|email|max:255|exists:users,email',
            'password' => 'required|min:6|confirmed',
            'password_confirmation' => 'required|min:6'
        ]);

        $registerService->resetPassword([
            'email' => $request->email,
            'password' => md5($request->password)
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

        $loginData['password'] = md5($loginData['password']);

        if (!auth()->attempt($loginData)) {
            return redirect()->route('login')->withErrors([
                'email_password_mismatch' => 'Email and password do not match',
            ]);
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
