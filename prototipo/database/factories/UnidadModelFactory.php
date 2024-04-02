<?php

namespace Database\Factories;

use App\Models\MateriaModel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\UnidadModel>
 */
class UnidadModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $porcentajeCalificacionFinal = $this->faker->numberBetween(20,50);
        $calificacionMaxima = $this->faker->numberBetween(10,30);

        return [
            'identificador_Materia'=>MateriaModel::inRandomOrder()->first()->identificador,
            'numero'=>$this->faker->numberBetween(1,5),
            'competencia'=>$this->faker->text(),
            'calificacionMaxima'=>$calificacionMaxima,
            'calificacionMinima'=>round($calificacionMaxima*0.8),
            'porcentajeCalificacionFinal'=>$porcentajeCalificacionFinal,
        ];
    }
}
