<?php

namespace Database\Factories;

use App\Models\UnidadModel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\TemaModel>
 */
class TemaModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'identificador_Unidad'=>UnidadModel::inRandomOrder()->first()->identificador,
            'titulo'=>$this->faker->sentence(),
            'subtitulo'=>$this->faker->sentence(),
            'horasDuracion'=>$this->faker->randomFloat($nbMaxDecimals = 2, $min = 0, $max = 2),
        ];
    }
}
