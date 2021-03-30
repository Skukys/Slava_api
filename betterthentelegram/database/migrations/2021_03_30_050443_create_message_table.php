<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMessageTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('message', function (Blueprint $table) {
            $table->id();
            $table->text('text');
            $table->foreignId('chat_id');
            $table->foreign('chat_id')->references('id')->on('chats');
            $table->foreignId('receiver');
            $table->foreign('receiver')->references('id')->on('users');
            $table->foreignId('sender');
            $table->foreign('sender')->references('id')->on('users');
            $table->foreignId('reply')->nullable();
            $table->foreign('reply')->references('id')->on('message');
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
        Schema::dropIfExists('message');
    }
}
