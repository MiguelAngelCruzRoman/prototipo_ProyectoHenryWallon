<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\AlumnoModel;
use App\Models\DocenteModel;
use App\Models\User;
use Illuminate\Support\Facades\Storage;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default, this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/usuario/index';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'email' => ['required', 'string', 'max:255'],
            'correo' => ['nullable', 'email', 'max:255'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
            'primerNombre' => ['required', 'string', 'max:255'],
            'segundoNombre' => ['nullable', 'string', 'max:255'],
            'apellidoPaterno' => ['required', 'string', 'max:255'],
            'apellidoMaterno' => ['nullable', 'string', 'max:255'],
            'rol' => ['required', 'string', 'in:Administrador,Alumno,Docente,Tutor'],
            'foto' => ['nullable'],
            'estatus' => ['required', 'in:true,false'],
            'sexo' => ['required', 'string', 'in:Hombre,Mujer'],
            'telefono' => ['required'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
    protected function create(array $data)
    {
        $fotos = null;
        if (isset($data['foto']) && $data['foto']->isValid()) {
            $fotos = Storage::disk('public')->put('/users/fotos', $data['foto']);
        }
        $user = User::create([
            'email' => $data['email'],
            'correo' => $data['correo'],
            'password' => Hash::make($data['password']),
            'primerNombre' => $data['primerNombre'],
            'segundoNombre' => $data['segundoNombre'],
            'apellidoPaterno' => $data['apellidoPaterno'],
            'apellidoMaterno' => $data['apellidoMaterno'],
            'rol' => $data['rol'],
            'foto' => $fotos,
            'estatus' => $data['estatus'] === 'true' ? true : false,
            'sexo' => $data['sexo'],
            'telefono' => $data['telefono'],
            'created_at' => now(),
            'updated_at' => now()
        ]);

        if ($data['rol'] === 'Docente') {
            DocenteModel::create([
                'id_Usuario' => $user->id,
                'fechaContratacion' => now(),
                'estatus' => 1,
            ]);
        } elseif ($data['rol'] === 'Alumno') {
            AlumnoModel::create([
                'id_Usuario' => $user->id,
                'semestre' => 1,
                'fechaIngreso' => now(),
                'estatus' => 1,
            ]);
        }

        return $user;
    }
}
