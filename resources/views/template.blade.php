<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="{{URL::asset('css/reset.css')}}">
        <link rel="stylesheet" type="text/css" href="{{URL::asset('css/style.css')}}">

        <title>Game Of Thrones</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
    </head>
    <body>
      <div class="container">
        <header>
<!-- insert header partial in here later -->
          @include('partials/header')
        </header>

        <div class="content">

          <div class="charList" id="charList">
            <h2 id="listTitle">Characters</h2>
            <ul>
            @foreach ($characters as $character)
              <li><a href="#" onclick="showDetails({{$character->id}})" class="charName" id="char{{$character->id}}">{{ $character->char_name }}</a></li>
            @endforeach
            </ul>
          </div>

          <div id="results">
            <h2 class="hidden">Character information</h2>
              <div class="details">
                <h2 class="hidden">Character Details</h2>
                <div id="name"> <h2 class="hidden">Character Name</h2> </div>
                <div id="actor"> <h2 class="hidden">Actor Name</h2> </div>
                <div id="house"> <h2 class="hidden">Character House</h2> </div>
                <div id="description"> <h2 class="hidden">Actor Bio</h2> </div>
                <div id="photo"> <h2 class="hidden">Character Photo</h2> </div>
              </div>
            <div id="banner"> <h2 class="hidden">House Banner</h2> </div>
          </div>


        </div>

      </div>
      <script src="{{URL::asset('js/main.js')}}" type="text/javascript"></script>
      <script src="{{URL::asset('js/utility.js')}}" type="text/javascript"></script>
      <script src="{{URL::asset('js/details.js')}}" type="text/javascript"></script>
    </body>
</html>
