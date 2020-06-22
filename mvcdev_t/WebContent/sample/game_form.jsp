<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png" sizes="16x16" href="/favicon.png">
<script type="text/javascript">
function my_send(you) {
	document.myform.you.value = you;
	document.myform.submit();
}
</script></head>
<body>
<form name="myform" method="post">
가위~ 바위~ 보~!<br/>
<input type="hidden" name="you" />
<img src="../img/scissors.png" onclick="my_send(1)" /><br/>
<img src="../img/rock.png"     onclick="my_send(2)" /><br/>
<img src="../img/paper.png"    onclick="my_send(3)" /><br/>
</form>
</body>
</html>