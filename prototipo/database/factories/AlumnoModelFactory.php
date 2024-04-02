<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\AlumnoModel>
 */
class AlumnoModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {

        $fechaIngreso = $this->faker->dateTimeBetween('-20 years', 'now');        
        $fechaEgreso = $this->faker->dateTimeBetween($fechaIngreso, '+3 years');

        return [
            'primerNombre' => $this->faker->firstName(),
            'segundoNombre' => $this->faker->optional()->firstName(),
            'apellidoPaterno' => $this->faker->lastName(),
            'apellidoMaterno' => $this->faker->lastName(),
            'semestre' => $this->faker->numberBetween(1, 12),
            'promedioGeneral' => $this->faker->randomFloat($nbMaxDecimals = 2, $min = 0, $max = 100),
            'fechaIngreso' => $fechaIngreso,
            'fechaEgreso' => $fechaEgreso,
            'foto' => $this->faker->imageUrl($width = 640, $height = 480),
            'usuario' => $this->faker->userName(),
            'contrasenia' => $this->faker->password(),
        ];
    }
}
