<?php

namespace Database\Factories;

use App\Models\DocenteModel;
use App\Models\ProgresionModel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\GrupoModel>
 */
class Progresion_DocenteModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'progresion_id'=>ProgresionModel::inRandomOrder()->first()->id,
            'docente_id'=>DocenteModel::inRandomOrder()->first()->id,
        ];
    }
}
