<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	long no = Long.parseLong(request.getParameter("no"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/favicon.png">
<title>게시물 삭제</title>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style type="text/css">
body {
		font-family: 'Nanum Pen Script', cursive;
		font-size:25px;
     }
</style>
</head>
<body>
<form action="delete_action.jsp" method="post">
<table>
<caption>게시물 삭제</caption>
<tr>
	<th>글번호</th>
	<td><%=no %>
		<input type="hidden" name="no" 
		value="<%=no %>" /></td>
</tr>
<tr>
	<th>비밀번호</th>
	<td><input type="password" name="passwd"  required="required" autofocus="autofocus"/><br/>
		* 처음 게시물 작성시 입력 했던 비밀번호를 재입력
	</td>
</tr>
<tr>
	<th></th>
	<td>
		<button type="submit">완료</button>
		<button type="reset">초기화</button>
	</td>
</tr>
</table>
</form>
</body>
</html>