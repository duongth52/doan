<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('id_khoa')->nullable($value = true);
            $table->string('name', 255);
            $table->string('phone');
            $table->date('birthday');
            $table->string('image', 255)->nullable($value = true);
            $table->string('address',255)->nullable();
            $table->string('email')->unique();
            $table->enum('gender', ['nam', 'nu'])->default('nam');
            $table->enum('role', ['superadmin', 'admin', 'user'])->default('user');
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->enum('status', ['0', '1'])->default('1');
            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
