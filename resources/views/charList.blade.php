<div class="charList">
  <ul>
  @foreach ($characters as $character)
    <li><a href="details?id={{$character->id}}" class="charName" id="char{{$character->id}}">{{ $character->char_name }}</a></li>
  @endforeach
  </ul>
</div>

<div id="results">
  <div id="name"></div>
  <div id="description"></div>
  <div id="photo"></div>
  <div id="banner"></div>
</div>
