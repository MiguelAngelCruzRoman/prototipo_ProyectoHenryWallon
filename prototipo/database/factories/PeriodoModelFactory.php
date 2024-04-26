<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Usuario_AlumnoModel>
 */
class PeriodoModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $tiposPeriodos = ['CicloEscolar','Semanal','Momento'];
        $fechaInicioClases = '2024-01-01';
        $fechaFinClases = '2024-12-31';

        $fechaInicioAleatoria = $this->faker->dateTimeBetween($fechaInicioClases, $fechaFinClases)->format('Y-m-d');
        $fechaFinAleatoria = $this->faker->dateTimeBetween($fechaInicioAleatoria, $fechaFinClases)->format('Y-m-d');

        return [
            'fechaInicio' => $fechaInicioAleatoria,
            'fechaFin' => $fechaFinAleatoria,
            'tipo' => $this->faker->randomElement($tiposPeriodos)
        ];
    }
}
