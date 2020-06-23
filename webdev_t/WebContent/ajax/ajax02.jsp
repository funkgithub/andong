<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script
  src="https://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#mybtn').click(function(){
		$('#demo').load('ajax_info.jsp');
	});
});
</script>
</head>
<body>


<h2>The XMLHttpRequest Object</h2>
<button type="button" id="mybtn">Change Content</button>
<div id="demo"></div>
</body>
</html>
