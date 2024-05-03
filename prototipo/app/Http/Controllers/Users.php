<?php

namespace App\Http\Controllers;

use App\Models\AlumnoModel;
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
        $users = DB::table('users')->paginate(10);

        return view('administrador/users/index', compact('users'));
    }


    public function busqueda()
    {
        $users = DB::table('users')
            ->where('primerNombre', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('segundoNombre', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('apellidoPaterno', 'like', '%' . $_GET['valorBusqueda'] . '%')
            ->orwhere('apellidoMaterno', 'like', '%' . $_GET['valorBusqueda'] . '%')
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



    public function eliminarUsuario($id)
    {
        $user = User::findOrFail($id);

        $user->delete();

        return redirect()->route('user.inicio')->with('success', 'Usuario eliminado correctamente');
    }


    public function editarUsuario($id)
    {
        $user = User::findOrFail($id);
        return view('administrador/users/editar', compact('user'));
    }

    public function updateUsuario(Request $request, $id)
    {
        $user = User::findOrFail($id);

        $request->validate([
            'email' => 'required|string|max:255|unique:users,email,' . $id,
            'correo' => 'nullable|string|email|max:255',
            'password' => 'nullable|string|min:8|confirmed',
            'primerNombre' => 'required|string|max:255',
            'segundoNombre' => 'nullable|string|max:255',
            'apellidoPaterno' => 'required|string|max:255',
            'apellidoMaterno' => 'nullable|string|max:255',
            'rol' => 'required|string|in:Administrador,Alumno,Docente,Tutor',
            'foto' => 'nullable|max:2048',
            'estatus' => 'required',
            'sexo' => 'required|string|in:Hombre,Mujer',
            'telefono' => 'required|string|max:20',
        ]);

        $user->email = $request->email;
        $user->correo = $request->correo;
        if ($request->filled('password')) {
            $user->password = bcrypt($request->password);
        }
        $user->primerNombre = $request->primerNombre;
        $user->segundoNombre = $request->segundoNombre;
        $user->apellidoPaterno = $request->apellidoPaterno;
        $user->apellidoMaterno = $request->apellidoMaterno;
        $user->rol = $request->rol;
        if ($request->hasFile('foto')) {
            $user->foto = $request->file('foto')->store('fotos', 'public');
        }

        $user->estatus = $request->estatus === 'true' ? true : false;
        $user->sexo = $request->sexo;
        $user->telefono = $request->telefono;

        $user->save();

        return redirect()->route('user.inicio')->with('success', 'Usuario actualizado correctamente');
    }

}
