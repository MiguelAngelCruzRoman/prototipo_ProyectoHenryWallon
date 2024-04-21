<?php

namespace Database\Factories;

use App\Models\EvaluacionModel;
use App\Models\ProgresionModel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Usuario_DocenteModel>
 */
class Progresion_EvaluacionModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'id_Progresion' => ProgresionModel::inRandomOrder()->first()->id,
            'id_Evaluacion' => EvaluacionModel::inRandomOrder()->first()->id,
        ];
    }
}
