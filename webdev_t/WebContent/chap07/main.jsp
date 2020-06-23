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
<% String str = "hello"; %>
main.jsp에서 생성한 내용.
<jsp:include page="sub.jsp"><!-- action tag -->
	<jsp:param value="<%=str %>" name="str"/>
</jsp:include>
include 이후의 내용.
<%= str %>
</body>
</html>