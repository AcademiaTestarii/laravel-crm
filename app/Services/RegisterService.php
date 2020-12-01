<?php

namespace App\Services;

use App\Models\Role;
use App\Repositories\TrainerProviderRepository;
use App\Repositories\TrainerRepository;
use App\Repositories\UserRepository;
use App\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Mail;

class RegisterService
{
    protected $userRepository;
    protected $trainerProviderRepository;
    protected $trainerRepository;

    public function __construct(
        UserRepository $userRepository,
        TrainerProviderRepository $trainerProviderRepository,
        TrainerRepository $trainerRepository
    ) {
        $this->userRepository = $userRepository;
        $this->trainerProviderRepository = $trainerProviderRepository;
        $this->trainerRepository = $trainerRepository;
    }

    /**
     * @param Role $role
     * @param array $userData
     */
    public function register(Role $role, array $userData)
    {
        $user = $this->createUserAndRole($role, $userData);
        $this->sendUserEmail($user, $role);
    }

    /**
     * @param array $userData
     */
    public function resetPassword(array $userData)
    {
        $user = $this->userRepository->findOneBy(['email' => $userData['email']]);
        $user->update([
            'password' => bcrypt($userData['password'])
        ]);

        $this->sendUserPasswordResetEmail($user);
    }

    /**
     * @param Role $role
     * @param array $userData
     * @return mixed
     * @throws \Exception
     */
    protected function createUserAndRole(Role $role, array $userData)
    {
        $user = $this->userRepository->create([
            'name' => $userData['name'],
            'email' => $userData['email'],
            'password' => bcrypt($userData['password']),
            'is_active' => $userData['is_active'],
            'hash' => $userData['hash']
        ]);

        $user->roleUser()->create(['role_id' => $role->id]);

        if ($user->isTrainerProvider()) {
            $this->trainerProviderRepository->create([
                'name' => $user->getName(),
                'user_id' => $user->getId()
            ]);
        }

        if ($user->isTrainer()) {
            $this->trainerRepository->findOneBy([
                'email' => $userData['email']
            ])->update([
                'user_id' => $user->getId()
            ]);

            $this->activateUser($user);
        }

        return $user;
    }

    /**
     * @param User $user
     * @param Role $role
     */
    protected function sendUserEmail(User $user, Role $role)
    {
        $emailTemplate = 'register_student';

        if ($user->isTrainerProvider()) {
            $emailTemplate = 'register_trainer_provider';
        }

        if ($user->isTrainer()) {
            return;
        }

        Mail::send(
            'auth/emails/' . $emailTemplate,
            ['user' => $user],
            function ($message) use ($user) {
                $message->from('contact@academiatestarii.ro')
                    ->to($user->getEmail())
                    ->subject('Confirmare înregistrare pe platforma Academia Testarii');
            }
        );
    }


    /**
     * @param User $user
     */
    protected function sendUserPasswordResetEmail(User $user)
    {
        $emailTemplate = 'register_reset_password';

        Mail::send(
            'auth/emails/' . $emailTemplate,
            ['user' => $user],
            function ($message) use ($user) {
                $message->from('contact@academiatestarii.ro')
                    ->to($user->getEmail())
                    ->subject('Confirmare resetare parola pe platforma Academia Testarii');
            }
        );
    }

    /**
     * @param User $user
     * @throws \Exception
     */
    public function activateUser(User $user)
    {
        $user->update([
            'is_active' => 1,
            'email_verified_at' => (new Carbon())->toDateTimeString()
        ]);
    }
}
