<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Password;

class Users extends Controller
{

    public function perfil()
    {
        $user = User::find(session('user.id'));

    // Generar el token de restablecimiento de contraseña
    $token = Password::createToken($user);

    return view('administrador/users/perfil', compact('user', 'token'));

    }

    public function index()
    {
        $user = DB::table('users')
            ->where('id', session('user.id'));

        return view('administrador/users/index', compact('user'));
    }

    public function inicio()
    {
        $user = DB::table('users')->paginate(10);

        return view('administrador/users/index', compact('user'));
    }


    public function busqueda()
    {
        $users = DB::table('users')
            ->where('primerNombre', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('email', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('correo', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('rol', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->paginate(10);

        return view('administrador/users/index', compact('users'));
    }


    public function verUsuario(string $idUser)
    {

        $user = DB::table('users')->where('id', $idUser)->get();

        return view('administrador/users/ver', compact('user'));
    }

    public function editarDatosUsuario(string $idUser)
    {
        $user = DB::table('users')->where('id', $idUser)->get();

        return view('administrador/users/editar', compact('user'));
    }



    public function eliminarUsuario(string $idUser)
    {
        $user = User::findOrFail($idUser);
        $user->delete();
        return redirect()->back();
    }


}
