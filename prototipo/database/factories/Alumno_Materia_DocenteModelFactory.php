<?php

namespace Database\Factories;

use App\Models\AlumnoModel;
use App\Models\Materia_DocenteModel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Alumno_Materia_DocenteModel>
 */
class Alumno_Materia_DocenteModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $fechaInicio = $this->faker->dateTimeBetween('-20 years', 'now');        
        $fechaFin = $this->faker->dateTimeBetween($fechaInicio, '+3 years');

        return [
            'identificador_Alumno'=>AlumnoModel::inRandomOrder()->first()->identificador,
            'identificador_Materia_Docente'=>Materia_DocenteModel::inRandomOrder()->first()->identificador,
            'fechaInicio'=>$fechaInicio,
            'fechaFin'=>$fechaFin,
            'calificacion'=>$this->faker->numberBetween(80,100),
            'semestre'=>$this->faker->numberBetween(1,12),
        ];
    }
}
