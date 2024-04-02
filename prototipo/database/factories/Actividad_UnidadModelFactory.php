<?php

namespace Database\Factories;

use App\Models\ActividadModel;
use App\Models\UnidadModel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Actividad_UnidadModel>
 */
class Actividad_UnidadModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'identificador_Actividad'=>ActividadModel::inRandomOrder()->first()->identificador,
            'identificador_Unidad'=>UnidadModel::inRandomOrder()->first()->identificador,
            'porcentajeCalificacionUnidad'=>$this->faker->numberBetween(50,100)
        ];
    }
}
