<?php

namespace Database\Factories;

use App\Models\PeriodoModel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\TemaModel>
 */
class ProgresionModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'id_Periodo'=>PeriodoModel::inRandomOrder()->first()->id,
            'tema'=>$this->faker->sentence(),
            'aprendizajeEsperado'=>$this->faker->sentence(),
            'materiales' =>$this->faker->sentence(),
        ];
    }
}

