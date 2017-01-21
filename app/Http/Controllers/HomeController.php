<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;
//access database model
use App\Characters;

class HomeController extends Controller {
  public function __construct() {}

    public function index() {
      $characters = Characters::get();
      // dd($characterList);
      return view('template', compact('characters'));
    }

    public function details() {
      $character = $_GET['char_id'];
      $results = Characters::where('id', $character)->get();
      // dd($results);
      // $characters = Characters::get();

      // $response = array(
      //   'id' => $results['id'],
      //   'name' => $results['char_name'],
      //   'description' => $results['char_description'],
      //   'photo' => $results['char_photo'],
      //   'banner' => $results['char_banner']
      // );


      return Response::json($results);
    }
}
