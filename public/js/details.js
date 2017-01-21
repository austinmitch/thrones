//display character details when their name is clicked

  //variables
  var detailsRequest;
  var char1 = document.querySelector("#char1");

  function showDetails(id) {
    "use strict";
    console.log("worked");
    detailsRequest = createRequest();
    if(detailsRequest===null) {
      alert("Your browser is hella old upgrade it");
      return;
    }

    var url = "details?char_id="+id;
    detailsRequest.onreadystatechange = detailsStatus;
    detailsRequest.open("GET",url,true);
    detailsRequest.send(null);
  }

  function detailsStatus() {
    if(detailsRequest.readyState===4 || detailsRequest.readyState==="complete") {
      var charJson = JSON.parse(detailsRequest.responseText);
      console.log(detailsRequest.responseText);
      console.log(charJson);
      //filling the page with the proper information
      document.querySelector("#name").innerHTML = "<p>"+charJson[0].char_name+"</p>";
      document.querySelector("#actor").innerHTML = "<p><span id='dim'>Played By:</span> "+charJson[0].char_actor+"</p>";
      document.querySelector("#house").innerHTML = "<p><span id='dim'>House:</span> "+charJson[0].char_house+"</p>";
      document.querySelector("#description").innerHTML = "<p>"+charJson[0].char_description+"</p>";
      document.querySelector("#photo").innerHTML =  "<img src='../storage/app/public/images/actors/"+charJson[0].char_photo+"'>";
      if(charJson[0].char_banner==="") {
        document.querySelector("#banner").innerHTML = "";
      }else{
        document.querySelector("#banner").innerHTML = "<img src='../storage/app/public/images/banners/"+charJson[0].char_banner+"'>";
      }

      // change the colour scheme based on the house
      function colorScheme() {
        document.querySelector("body").style.backgroundColor = "rgb("+charJson[0].char_color1+")";
        document.querySelector("#charList").style.backgroundColor = "rgba("+charJson[0].char_color2+")";
        document.querySelector("#listTitle").style.color = "rgb("+charJson[0].char_color1+")";
      }
      colorScheme();

    }
  }
