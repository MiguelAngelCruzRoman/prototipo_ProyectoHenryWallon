<?php

namespace Database\Factories;

use App\Models\Asignatura_DocenteModel;
use App\Models\PeriodoModel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\GrupoModel>
 */
class GrupoModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'id_Asignatura_Docente'=>Asignatura_DocenteModel::inRandomOrder()->first()->id,
            'id_Periodo'=>PeriodoModel::inRandomOrder()->first()->id,
            'semestre'=>$this->faker->numberBetween(1,6)
        ];
    }
}
