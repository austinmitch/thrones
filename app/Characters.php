<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Characters extends Model
{
    protected $table = 'tbl_char';
    protected $primaryKey = 'char_id';
    public $timestamps = false;

    protected $visible = [
      'id', 'char_name', 'char_actor', 'char_house', 'char_description', 'char_photo', 'char_banner', 'char_color1', 'char_color2'
    ];
}
