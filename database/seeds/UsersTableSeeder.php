<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = App\User::create([
          'name' => 'salim hosen',
          'email' => 'salim@hosen.com',
          'password' => bcrypt('password'),
          'admin' => 1
        ]);

        App\Profile::create([
          'user_id' => $user->id,
          'avatar' => 'uploads/avatars/admin.png',
          'about' => 'lorem ipsum dolor voluptaters amet. consectetur adipisicnt elit. accusantium est veniam non corporis sunt quas.',
          'facebook' => 'facebook.com',
          'youtube' => 'youtube.com'
        ]);
    }
}
