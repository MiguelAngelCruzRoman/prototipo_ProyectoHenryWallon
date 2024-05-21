<?php

namespace Database\Factories;

use App\Models\BloqueModel;
use App\Models\DocenteModel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\GrupoModel>
 */
class Docente_BloqueModelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'docente_id'=>DocenteModel::inRandomOrder()->first()->id,
            'bloque_id'=>BloqueModel::inRandomOrder()->first()->id,
        ];
    }
}
