<?php

namespace Database\Factories;

use App\Models\User;
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
        $usuariosAlumno = User::where('rol', 'Alumno')->pluck('id')->toArray();
        $usuariosTutor = User::where('rol', 'Tutor')->pluck('id')->toArray();

        $fechaIngreso = $this->faker->dateTimeBetween('-20 years', 'now');        
        $fechaEgreso = $this->faker->dateTimeBetween($fechaIngreso, '+3 years');

        return [
            'id_Usuario' => $this->faker->randomElement($usuariosAlumno),
            'semestre' => $this->faker->numberBetween(1, 6),
            'fechaIngreso' => $fechaIngreso,
            'fechaEgreso' => $this->faker->randomElement([$fechaEgreso, null]),
            'estatus' => $this->faker->randomElement([true,false]),
            'id_UsuarioTutor' => $this->faker->randomElement($usuariosTutor),
        ];
    }
}
