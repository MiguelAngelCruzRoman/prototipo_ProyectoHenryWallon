<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\ActividadModel>
 */
class EvaluacionModelFactory extends Factory
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
            'actividadAprendizaje' => $this->faker->sentence,
            'tipoEvaluacion' => $this->faker->randomElement(['Examen', 'Rúbrica', 'Lista de Cotejo']),
            'archivoEjemplo' => $this->faker->randomElement([null, $this->faker->imageUrl()]),
         ];
    }
}
