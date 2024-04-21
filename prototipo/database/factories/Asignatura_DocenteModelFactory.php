<?php

namespace Database\Factories;

use App\Models\AsignaturaModel;
use App\Models\DocenteModel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Asignatura_DocenteModel>
 */
class Asignatura_DocenteModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'id_Asignatura' => AsignaturaModel::inRandomOrder()->first()->id,
            'id_Docente' => DocenteModel::inRandomOrder()->first()->id,
        ];
    }
}
