<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Form;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        User::create([
            "username"=>env('ADMIN_USERNAME'),
            "password"=>Hash::make(env('ADMIN_PASSWORD'))
        ]);
        Form::create([
            "donatur"=>"Holland Bakery",
            "kuota"=>"20",
            "sisa"=>"0",
            "pengambilan"=>"2024-09-12",
            "jam"=>"11",
            "status"=>"aktif",
        ]);
    }
}
