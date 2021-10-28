<?php

namespace Database\Factories;

use App\Models\Etudiant;
use Illuminate\Database\Eloquent\Factories\Factory;

class EtudiantFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Etudiant::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name(),
            'adress' => $this->faker->address(),
            'phone' => $this->faker->phoneNumber(),
            'email' => $this->faker->email(),
            'birth_date' => $this->faker->date($format = 'Y-m-d', $max = 'now'),
            'ville_id' => random_int(\DB::table('villes')->min('id'), \DB::table('villes')->max('id')), //https://laracasts.com/discuss/channels/code-review/model-factory-referencing-a-foreign-key post de EventFellows
        ];
    }
}
