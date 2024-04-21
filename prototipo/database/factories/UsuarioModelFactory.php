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

        return [
            'primerNombre' => $this->faker->firstName,
            'segundoNombre' =>  $this->faker->randomElement([$this->faker->optional()->firstName, null]),
            'apellidoPaterno' => $this->faker->lastName,
            'apellidoMaterno' => $this->faker->lastName,
            'nombreUsuario' => $this->faker->userName(),
            'contrasenia' => $this->faker->password(),
            'correo' => $this->faker->unique()->safeEmail(),
            'rol' => $this->faker->randomElement(['administrador', 'alumno','docente']),
            'foto' => $this->faker->imageUrl(),
            'estatus' => $this->faker->randomElement([0,1]),
        ];
    }
}
