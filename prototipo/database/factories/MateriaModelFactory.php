<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class MateriaModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $creditos =$this->faker->numberBetween(4,10);
        $horasPracticas = $creditos - ($this->faker->numberBetween(0,$creditos));
        $horasTeoricas = $creditos- $horasPracticas;
        
        return [
            'nombre'=>$this->faker->sentence(3),
            'objetivo'=>$this->faker->text(),
            'intencionDidactica'=>$this->faker->text(),
            'creditos'=>$creditos,
            'horasPracticas'=>$horasPracticas,
            'horasTeoricas'=>$horasTeoricas,
            'calificacionAprobatoria'=>$this->faker->numberBetween(80,100),
            'imagen'=>$this->faker->imageUrl($width = 640, $height = 480),
        ];
    }
    
}
