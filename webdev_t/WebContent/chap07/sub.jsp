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
<p>
<%
	String str = request.getParameter("str");
%>
sub.jsp 에서 생성한 내용
<%=str %>
</p>
</body>
</html>

