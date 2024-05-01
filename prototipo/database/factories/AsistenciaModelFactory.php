<?php

namespace Database\Factories;

use App\Models\Asignatura_DocenteModel;
use App\Models\Grupo_AlumnoModel;
use App\Models\PeriodoModel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\GrupoModel>
 */
class AsistenciaModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'id_Grupo_Alumno'=>Grupo_AlumnoModel::inRandomOrder()->first()->id,
            'fecha'=>$this->faker->dateTimeBetween('-20 years', 'now'),
            'estatus' => $this->faker->randomElement(['Asistencia','Justificante','Retraso'.'Falta']),
            'obervacion'=>$this->faker->text(),
        ];
    }
}
