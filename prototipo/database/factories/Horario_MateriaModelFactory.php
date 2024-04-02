<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\HorarioModel;
use App\Models\MateriaModel;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class Horario_MateriaModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'identificador_Horario' => HorarioModel::inRandomOrder()->first()->identificador,
            'identificador_Materia' => MateriaModel::inRandomOrder()->first()->identificador,
        ];
    }
}
