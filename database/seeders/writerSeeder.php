<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as faker;
use App\Models\msWriter as writer;

class writerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = faker::create('id_ID');
        for($i=0; $i<10 ; $i++){
            writer::create([
                'name'=>$faker->name,
                'specialist'=>$faker->jobTitle
            ]);
        }
    }
}
