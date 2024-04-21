<?php

namespace Database\Factories;

use App\Models\BloqueModel;
use App\Models\ProgresionModel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Actividad_ClaseModel>
 */
class Bloque_ProgresionModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {

        return [
            'id_Bloque'=>BloqueModel::inRandomOrder()->first()->id,
            'id_Progresion'=>ProgresionModel::inRandomOrder()->first()->id,
        ];
    }
}
