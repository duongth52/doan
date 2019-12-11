<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class UsersTableSeede extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'nguyen',
            'email' => 'nguyen@gmaill.com',
            'password' => bcrypt('password'),
            'role'  => 'superadmin',
            'phone' => '0978029699',
            'birthday' => date('Y-m-d'),
        ]);
    }
}
