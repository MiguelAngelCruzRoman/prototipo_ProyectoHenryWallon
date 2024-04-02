<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\DocenteModel>
 */
class DocenteModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {

        return [
            'primerNombre' => $this->faker->firstName(),
            'segundoNombre' => $this->faker->optional()->firstName(),
            'apellidoPaterno' => $this->faker->lastName(),
            'apellidoMaterno' => $this->faker->lastName(),
            'foto' => $this->faker->imageUrl($width = 640, $height = 480),
            'usuario' => $this->faker->userName(),
            'contrasenia' => $this->faker->password(),
        ];
    }
}
