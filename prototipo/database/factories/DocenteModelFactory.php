<?php

namespace Database\Factories;

use App\Models\UsuarioModel;
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
        $usuariosDocente = UsuarioModel::where('rol', 'docente')->pluck('id')->toArray();

        $fechaContratacion = $this->faker->dateTimeBetween('-20 years', 'now');        
        $fechaDimision = $this->faker->dateTimeBetween($fechaContratacion, '+3 years');

        return [
            'id_Usuario' => $this->faker->randomElement($usuariosDocente),
            'fechaContratacion' => $fechaContratacion,
            'fechaDimision' => $this->faker->randomElement([$fechaDimision, null]),
            'estatus' => $this->faker->randomElement([0, 1]),
        ];
    }
}
