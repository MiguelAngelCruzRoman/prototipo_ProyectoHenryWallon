<?php

namespace Database\Factories;

use App\Models\DocenteModel;
use App\Models\UsuarioModel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Usuario_DocenteModel>
 */
class Usuario_DocenteModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'identificador_Usuario' => UsuarioModel::inRandomOrder()->first()->identificador,
            'identificador_Docente' => DocenteModel::inRandomOrder()->first()->identificador,
        ];
    }
}
