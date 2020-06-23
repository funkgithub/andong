<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>


<h2>The XMLHttpRequest Object</h2>
<button type="button" onclick="loadDoc()">Change Content</button>
<div id="demo"></div>

<script>
function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("demo").innerHTML =
    	  document.getElementById("demo").innerHTML + this.responseText;
    }
  };
  xhttp.open("GET", "ajax_info.jsp", true);
  xhttp.send();
}
</script>

</body>
</html>
