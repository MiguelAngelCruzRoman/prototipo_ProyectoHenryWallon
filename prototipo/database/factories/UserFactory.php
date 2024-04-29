<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class UserFactory extends Factory
{
    /**
     * The current password being used by the factory.
     */
    protected static ?string $password;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'email' => $this->faker->userName(),
            'correo' => $this->faker->unique()->safeEmail(),
            'email_verified_at' => now(),
            'password' => static::$password ??= Hash::make('password'),
            'remember_token' => Str::random(10),
            'primerNombre' => $this->faker->firstName,
            'segundoNombre' =>  $this->faker->randomElement([$this->faker->optional()->firstName, null]),
            'apellidoPaterno' => $this->faker->lastName,
            'apellidoMaterno' => $this->faker->lastName,
            'rol' => $this->faker->randomElement(['Administrador', 'Alumno','Docente','Tutor']),
            'foto' => $this->faker->imageUrl(),
            'estatus' => $this->faker->boolean([true,false]),
            'sexo' => $this->faker->randomElement(['Hombre','Mujer']),
            'telefono' => $this->faker->phoneNumber(),
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     */
    public function unverified(): static
    {
        return $this->state(fn (array $attributes) => [
            'email_verified_at' => null,
        ]);
    }
}
