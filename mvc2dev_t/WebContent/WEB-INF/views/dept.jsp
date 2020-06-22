<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<table border="1">
	<caption>${title}</caption>
<tr>
	<th>부서번호</th>
	<th>부서명</th>
	<th>위치</th>
</tr>
<c:forEach items="${list}" var="dto">
<tr>
	<td>${dto.department_id}</td>
	<td>${dto.department_name}</td>
	<td>${dto.location_id}</td>
</tr>
</c:forEach>	
</table>
</body>
</html>