<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCharacterTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      Schema::create('tbl_char', function (Blueprint $table) {
          $table->increments('id');
          $table->string('char_name');
          $table->string('char_actor');
          $table->string('char_house');
          $table->string('char_description', 1000);
          $table->string('char_photo');
          $table->string('char_banner');
          $table->string('char_color1');
          $table->string('char_color2');
      });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_char');
    }
}
