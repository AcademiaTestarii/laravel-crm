<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Role;
use App\Repositories\RoleRepository;
use App\Repositories\UserRepository;
use App\Services\RegisterService;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    protected $roleRepository;
    protected $userRepository;
    protected $registerService;

    public function __construct(
        RoleRepository $roleRepository,
        UserRepository $userRepository,
        RegisterService $registerService
    ) {
        $this->roleRepository = $roleRepository;
        $this->userRepository = $userRepository;
        $this->registerService = $registerService;
    }

    public function getRegister()
    {
        auth()->logout();
        $roles = $this->roleRepository->getAllRolesExcept(['admin', 'trainer']);
        $trainerRole = $this->roleRepository->findOneBy(['code' => Role::ROLE_TRAINER]);

        return view('auth.register')->with(['roles' => $roles, 'roleTrainer' => $trainerRole]);
    }

    public function getPasswordReset()
    {
        return view('auth.passwords.reset');
    }

    public function postRegister(Request $request)
    {
        $validatedData = $request->validate(
            [
                'name' => 'required|max:255',
                'email' => 'required|email|max:255|unique:users',
                'password' => 'required|min:6|confirmed',
                'role' => 'required|int',
            ]
        );

        $role = $this->roleRepository->findOneBy(['id' => $request->get('role')]);

        $this->registerService->register(
            $role,
            [
                'name' => $request->name,
                'email' => $request->email,
                'is_active' => null,
                'password' => md5($request->password),
                'hash' => $this->generateHash($request->email),
            ]
        );

        $mainClassId = $request->get('mainClassId');
        return redirect()->route('login')->with(['activate_email' => ($role->isTrainer()) ? false : true, 'mainClassId' => $mainClassId]);
    }

    public function postEmailPasswordReset(Request $request)
    {
        $validatedData = $request->validate(
            [
                'email' => 'required|email|max:255|exists:users,email',
            ]
        );

        $user = $this->userRepository->findOneBy(['email' => $request['email']]);
        $this->registerService->sendUserPasswordResetEmail($user);

        return redirect()->route('email_reset')->with(['reset_email' => true]);
    }

    public function postPasswordReset(Request $request)
    {
        $validatedData = $request->validate(
            [
                'password' => 'required|min:6|confirmed',
                'password_confirmation' => 'required|min:6',
            ]
        );

        $user = $this->userRepository->findOneBy(['hash' => $request['hash']]);

        $this->registerService->resetPassword(
            [
                'email' => $user->getEmail(),
                'password' => md5($request->get('password')),
            ],
            false
        );

        return redirect()->route('login')->with(['reset_password' => true]);
    }

    public function getEmailPasswordReset(string $hash)
    {
        $user = $this->userRepository->findOneBy(['hash' => $hash]);

        return view('auth.passwords.reset_after_email')->with(['user' => $user, 'hash' => $hash]);
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

        $loginData = $request->validate(
            [
                'email' => 'email|required',
                'password' => 'required',
            ]
        );

        $loginData['password'] = md5($loginData['password']);
        $loginData['is_active'] = 1;

        if (!auth()->attempt($loginData)) {
            return redirect()->route('login')->withErrors(
                [
                    'email_password_mismatch' => 'Email and password do not match',
                ]
            );
        }

        if (auth()->user()->isStudent()) {
            if ($request->get('mainClassId') != null) {
                return redirect('/catalog/' . $request->get('mainClassId') . '/class_signup');
            }

            return redirect()->route('hp');
        }

        auth()->user()->createToken('AcademiaTestarii')->accessToken;

        return redirect()->route('dashboard');


    }

    public function logOut()
    {
        auth()->logout();

        return redirect('/login');
    }

    /**
     * @param string $email
     *
     * @return string
     */
    protected function generateHash(string $email)
    {
        return sha1(mt_rand(10000, 99999) . time() . $email);
    }

    /**
     * @param string $hash
     *
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function activate(string $hash)
    {
        $user = $this->userRepository->findOneBy(['hash' => $hash]);

        if ($user) {
            $this->registerService->activateUser($user);
        }

        return redirect('/login?mainClassId=' . \request()->get('mainClassId'))->with(['activated' => true]);
    }
}
