<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Repositories\RoleRepository;
use App\Services\RegisterService;
use Illuminate\Http\Request;

class PassportAuthController extends Controller
{
    protected $roleRepository;

    public function __construct(RoleRepository $roleRepository)
    {
        $this->roleRepository = $roleRepository;
    }

    public function getRegister()
    {
        $roles = $this->roleRepository->getAllRolesExceptAdmin();

        return view('auth.register')->with(['roles' => $roles]);
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
