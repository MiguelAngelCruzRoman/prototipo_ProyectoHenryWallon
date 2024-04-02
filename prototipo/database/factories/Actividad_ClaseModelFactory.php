<?php

namespace Database\Factories;

use App\Models\Actividad_UnidadModel;
use App\Models\ClaseModel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Actividad_ClaseModel>
 */
class Actividad_ClaseModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {

        return [
            'identificador_Clase'=>ClaseModel::inRandomOrder()->first()->identificador,
            'identificador_Actividad_Unidad'=>Actividad_UnidadModel::inRandomOrder()->first()->identificador,
            'horasPlaneadas'=>$this->faker->numberBetween(1,4),
            'calificacion'=>$this->faker->numberBetween(70,100),
        ];
    }
}
