<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\UsuarioModel>
 */
class UsuarioModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $roles = ['alumno','administrador','docente'];

        return [
            'usuario' => $this->faker->userName(),
            'contrasenia' => $this->faker->password(),
            'foto' => $this->faker->imageUrl($width = 640, $height = 480),
            'rol'=> $this->faker->randomElement($roles)
        ];
    }
}
