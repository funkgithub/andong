<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/favicon.png">
<title>Insert title here</title>
</head>
<body>
<form action="login_process.jsp" method="get">
<table>
<caption>로그인</caption>
<tr>
	<th>아이디</th>
	<td><input type="text" name="user_id" 
		autofocus="autofocus" required="required"/></td>
</tr>
<tr>
	<th>비밀번호</th>
	<td><input type="password" name="user_pw" 
		required="required"></td>
</tr>
<tr>
	<th></th>
	<td><button type="submit">login</button></td>
</tr>
</table>
</form>
</body>
</html>