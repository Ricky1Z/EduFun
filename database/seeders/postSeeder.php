<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as faker;
use App\Models\msPost as post;
use App\Models\msCategory as category;
use App\Models\msWriter as writer;

class postSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */

    public function run(): void
    {
        $faker = faker::create('id_ID');

        $category = category::all();
        $writer = writer::all();

        for($i=0; $i<10 ; $i++){
            post::create([
                'title'=>$faker->sentence,
                'description'=>$faker->paragraph,
                'categoryId'=>$category->random()->id,
                'writerId'=>$writer->random()->id
            ]);
        }
    }
}
