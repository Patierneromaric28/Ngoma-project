<?php

use Illuminate\Database\Seeder;
use App\Models\Property;
use Faker\Factory as Faker;

class PropertyTableSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();

        // Generate a random image path
        // $randomImagePath = 'assets/img/property-' . $faker->numberBetween(1, 10) . '.jpg';

        foreach (range(1, 15) as $index) {
            Property::create([
                'city' => $faker->city,
                'user_id' => 1, // Assuming a user with ID 1 exists
                'price' => $faker->numberBetween(10000, 50000),
                'area' => $faker->numberBetween(50, 200),
                'beds' => $faker->numberBetween(1, 5),
                'baths' => $faker->numberBetween(1, 3),
                'garage' => $faker->numberBetween(0, 2),
                'location' => $faker->streetAddress,
                'status' => $faker->randomElement(['sale', 'rent']),
                'batch' => $faker->word,
                'image_path' => "assets/img/property-7.jpg" // Use the same random image path for all properties
            ]);
        }
    }
}

