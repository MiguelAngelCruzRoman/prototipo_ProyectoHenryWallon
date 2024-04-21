<?php

namespace Database\Factories;

use App\Models\AlumnoModel;
use App\Models\GrupoModel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\ClaseModel>
 */
class Grupo_AlumnoModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {

        return [
            'id_Grupo'=>GrupoModel::inRandomOrder()->first()->id,
            'id_alumno'=>AlumnoModel::inRandomOrder()->first()->id,
        ];
    }
}
