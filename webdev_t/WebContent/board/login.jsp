<%@page import="util.Cookies"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String user_id = "";
	Cookies cookies = new Cookies(request);
	if (cookies.exists("user_id")) {
		user_id = cookies.getValue("user_id");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/favicon.png">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style type="text/css">
body {
		font-family: 'Nanum Pen Script', cursive;
		font-size:25px;
     }
</style>
</head>
<body>
<form action="login_action.jsp" method="get">
<table>
<caption>로그인</caption>
<tr>
	<th>아이디</th>
	<td><input type="text" name="user_id" 
		value="<%=user_id %>"
		autofocus="autofocus" required="required"/></td>
</tr>
<tr>
	<th>비밀번호</th>
	<td><input type="password" name="user_pw" 
		required="required"></td>
</tr>
<tr>
	<th></th>
	<td><input type="checkbox" name="save_id" 
		<% if(!user_id.equals("")) { %>
		checked="checked"
		<% } %>
		/> 아이디 저장</td>
</tr>
<tr>
	<th></th>
	<td><button type="submit">login</button></td>
</tr>
</table>
</form>
</body>
</html>