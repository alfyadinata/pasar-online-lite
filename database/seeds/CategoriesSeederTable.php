<?php

use Illuminate\Database\Seeder;

class CategoriesSeederTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        for($i=0; $i<=10000; $i++):
            DB::table('categories')
                ->insert([
                    'uuid'  => str_random(),
                    'name' => $faker->sentence,
                    'slug' => str_slug($faker->sentence),
                    'is_product' => 1 || 0
                ]);
        endfor;
    }
}
