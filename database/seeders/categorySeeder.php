<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as faker;
use App\Models\msCategory as category;

class categorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $category = [
            ['category' => 'Data Science'],
            ['category' => 'Network Security']
        ];

        foreach ($category as $c) {
            category::create($c);
        }
    }
}
