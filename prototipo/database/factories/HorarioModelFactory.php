<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\HorarioModel>
 */
class HorarioModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {

        $diasSemana = ['Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes'];
        $horaInicioClases = '08:00';
        $horaFinClases = '13:00';

        $horaInicioAleatoria = $this->faker->dateTimeBetween('T' . $horaInicioClases, 'T' . $horaFinClases)->format('H:i');
        $horaFinAleatoria = $this->faker->dateTimeBetween('T' . $horaInicioAleatoria, 'T' . $horaFinClases)->format('H:i');

        return [
            'dia' => $this->faker->randomElement($diasSemana),
            'horaInicio' => $horaInicioAleatoria,
            'horaFin' => $horaFinAleatoria,
        ];
    }
}
