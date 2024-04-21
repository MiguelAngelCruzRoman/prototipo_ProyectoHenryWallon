<?php

namespace Database\Factories;

use App\Models\AsignaturaModel;
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\HorarioModel;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class Horario_AsignaturaModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'id_Horario' => HorarioModel::inRandomOrder()->first()->id,
            'id_Asignatura' => AsignaturaModel::inRandomOrder()->first()->id,
        ];
    }
}
