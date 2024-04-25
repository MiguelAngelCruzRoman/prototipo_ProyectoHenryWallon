<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RolController extends Controller
{
    public function assignRole(Request $request){
        $user = auth()->user();
        $role = Role::findByName($request->admin);
        $user->assignRole($role);
        return back()-> with('success', 'Rol asignado');
    }
}
