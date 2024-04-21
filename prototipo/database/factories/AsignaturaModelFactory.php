<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\AsignaturaModel>
 */
class AsignaturaModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $creditos =$this->faker->numberBetween(4,10);
        $horasDocente = $creditos - ($this->faker->numberBetween(0,$creditos));
        $horasEstudioIndependiente = $creditos- $horasDocente;
        
        return [
            
            'nombre'=>$this->faker->sentence(3),
            'objetivo'=>$this->faker->text(),
            'intencionDidactica' => $this->faker->paragraph,
            'turno' => $this->faker->randomElement(['Matutino', 'Vespertino']),
            'semestre' => $this->faker->numberBetween(1, 6),
            'componente' => $this->faker->randomElement(['Fundamental', 'Fundamental Extendido','Fundamental Extendido Obligatorio','Laboral Básico','Ampliada']),
            'creditos'=>$creditos,
            'horasDocente'=>$horasDocente,
            'horasEstudioIndependiente'=>$horasEstudioIndependiente,
            'calificacionAprobatoria'=>$this->faker->numberBetween(80,100),
            'imagen'=>$this->faker->imageUrl($width = 640, $height = 480),
            'estatus' => $this->faker->randomElement([0, 1]),
        ];
    }
    
}
