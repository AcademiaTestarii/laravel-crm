<?php

namespace App\Services;

use App\Models\Role;
use App\Repositories\UserRepository;
use App\User;
use Illuminate\Support\Facades\Mail;

class RegisterService
{
    protected $userRepository;

    public function __construct(UserRepository $userRepository)
    {
        $this->userRepository = $userRepository;
    }

    public function register(Role $role, array $userData)
    {
        $user = $this->createUserAndRole($role, $userData);
        $this->sendUserEmail($user, $role);
    }

    /**
     * @param Role $role
     * @param array $userData
     * @return mixed
     */
    protected function createUserAndRole(Role $role, array $userData)
    {
        $user = $this->userRepository->create([
            'name' => $userData['name'],
            'email' => $userData['email'],
            'password' => bcrypt($userData['password'])
        ]);

        $user->roleUser()->create(['role_id' => $role->id]);

        return $user;
    }

    /**
     * @param User $user
     * @param Role $role
     */
    protected function sendUserEmail(User $user, Role $role)
    {
        $emailTemplate = 'register_student';
        $greetings = "Salut " . $user->name . "<br><br>";
        $message = "<p>Mulţumim pentru înregistrare! Ti-am rezervat un loc in clasă.<br>
        Pentru a finaliza inscrierea, te rugam sa faci plata, conform modalitatii de plata aleasa (integral, in rate), in
        contul RO42 INGB 0000 9999 0985 9526. Te rugam sa mentionezi in detaliile de plata, persoana pentru care se face
        plata.<p>
        <p>Iti multumim,<br>Echipa Academia Testarii</p>";

        if (!$role->isStudent()) {
            $emailTemplate = 'register_trainer';

            $message = "<p>Mulţumim pentru înregistrare! Ti-am rezervat un loc la catedra.<br>
        <p>
        <p>Iti multumim,<br>Echipa Academia Testarii</p>";
        }

        Mail::send(
            'auth/emails/' . $emailTemplate,
            ['messageBody' => ['greetings' => $greetings, 'message' => $message]],
            function ($message) use ($user) {
                $message->from('contact@academiatestarii.ro')
                    ->to($user->getEmail())
                    ->subject('Confirmare înregistrare pe platforma Academia Testarii');
            }
        );
    }

}
