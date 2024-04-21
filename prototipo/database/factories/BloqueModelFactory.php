<?php

namespace Database\Factories;

use App\Models\AsignaturaModel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\UnidadModel>
 */
class BloqueModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $porcentajeCalificacionFinal = $this->faker->numberBetween(20,50);
        $calificacionMaxima = $this->faker->numberBetween(10,30);

        return [
            'id_Asignatura'=>AsignaturaModel::inRandomOrder()->first()->id,
            'nombre'=>$this->faker->sentence(3),
            'numero'=>$this->faker->numberBetween(1,5),
            'proposito' => $this->faker->sentence,
            'eje' =>$this->faker->sentence(),
            'componente' => $this->faker->sentence,
            'contenidoCentral' => $this->faker->paragraph,
            'productoIntegrador' => $this->faker->sentence,
            'calificacionMaxima'=>$calificacionMaxima,
            'calificacionMinima'=>round($calificacionMaxima*0.8),
            'porcentajeCalificacionFinal'=>$porcentajeCalificacionFinal,
        ];
    }
}
