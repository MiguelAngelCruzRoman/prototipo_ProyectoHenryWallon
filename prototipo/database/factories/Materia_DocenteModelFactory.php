<?php

namespace Database\Factories;

use App\Models\DocenteModel;
use App\Models\MateriaModel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Materia_DocenteModel>
 */
class Materia_DocenteModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'identificador_Materia' => MateriaModel::inRandomOrder()->first()->identificador,
            'identificador_Docente' => DocenteModel::inRandomOrder()->first()->identificador,
        ];
    }
}
