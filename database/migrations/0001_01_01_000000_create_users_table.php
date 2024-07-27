<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('heroes', function (Blueprint $table) {
            $table->id();
            $table->string('nama');
            $table->string('telepon');
            $table->string('asal');
            $table->enum('status',['sudah','belum']);
            $table->foreignId('form');
            $table->char('kode',6);
            $table->timestamps();
        });
        Schema::create('forms', function (Blueprint $table) {
            $table->id();
            $table->string('donatur');
            $table->integer('kuota');
            $table->integer('sisa');
            $table->integer('close');
            $table->enum('status',["aktif","selesai"]);
            $table->timestamps();
        });
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('username');
            $table->string('password');
            $table->timestamps();
        });
        Schema::create('sessions', function (Blueprint $table) {
            $table->string('id')->primary();
            $table->foreignId('user_id')->nullable()->index();
            $table->string('ip_address', 45)->nullable();
            $table->text('user_agent')->nullable();
            $table->longText('payload');
            $table->integer('last_activity')->index();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
        Schema::dropIfExists('heroes');
        Schema::dropIfExists('forms');
        Schema::dropIfExists('sessions');
    }
};
