<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\ActividadModel>
 */
class ActividadModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $actividades = ['Mapa mental', 'Mapa conceptual','Cuadro Sinóptico','Cuadro Comparativo','Exposición','Examen'];
        $evaluaciones = ['Rúbrica','Lista de cotejo','Guía de observación'];

        return [
            'competenciaDesarrollada'=>$this->faker->sentence(),
            'tipoActividad'=>$this->faker->randomElement($actividades),
            'tipoEvaluacion'=>$this->faker->randomElement($evaluaciones),
        ];
    }
}
