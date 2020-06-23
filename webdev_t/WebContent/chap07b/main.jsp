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
<% String str="hello"; %>
main.jsp에서 생성한 내용.
<%@ include file="sub.jsp" %> <!-- include directive -->
include 이후의 내용.<%=str %>
</body>
</html>