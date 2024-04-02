<?php

namespace Database\Factories;

use App\Models\Alumno_Materia_DocenteModel;
use App\Models\TemaModel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\ClaseModel>
 */
class ClaseModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {

        $estatus = ['En proceso','Cancelada','Realizada','Pospuesta'];
        $observaciones = ['','Debido a causas mayores, la clase no se llevó a cabo','','La clase se realizará una hora después de lo previsto'];
        $index = $this->faker->numberBetween(0,3);

        return [
            'identificador_Alumno_Materia_Docente'=>Alumno_Materia_DocenteModel::inRandomOrder()->first()->identificador,
            'identificador_Tema'=>TemaModel::inRandomOrder()->first()->identificador,
            'fecha'=>$this->faker->dateTimeBetween('-20 years', 'now'),
            'asistenciaAlumno'=>$this->faker->boolean(),
            'asistenciaDocente'=>$this->faker->boolean(),
            'estatus'=>$estatus[$index],
            'observaciones'=>$observaciones[$index],
        ];
    }
}
