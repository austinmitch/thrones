//function to create ajax request
function createRequest() {
  "use strict";
  var request;

  try {
    request = new XMLHttpRequest();
  } catch(e) {
    try {
      request = new ActiveXObject("Msxml2.HMLHTTP");
    } catch(e) {
      try {
        request = new ActiveXObject("Microsoft.XMLHTTP");
      } catch(e) {
        request = null;
      }
    }
  }
  return request;
}
