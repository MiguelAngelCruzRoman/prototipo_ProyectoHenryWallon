<?php

namespace Database\Factories;

use App\Models\AsignaturaModel;
use App\Models\Docente_BloqueModel;
use App\Models\EvaluacionModel;
use App\Models\Progresion_DocenteModel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\GrupoModel>
 */
class PlaneacionModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'progresion_docente_id'=>Progresion_DocenteModel::inRandomOrder()->first()->id,
            'docente_bloque_id'=>Docente_BloqueModel::inRandomOrder()->first()->id,
            'evaluacion_id'=>EvaluacionModel::inRandomOrder()->first()->id,
            'asignatura_id'=>AsignaturaModel::inRandomOrder()->first()->id,
        ];
    }
}
