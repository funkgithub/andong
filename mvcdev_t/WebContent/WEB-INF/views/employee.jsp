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
	<caption>사원 정보</caption>
<tr>
	<th>사원명</th>
	<th>업무</th>
	<th>급여</th>
</tr>
<c:forEach items="${list}" var="dto">
<tr>
	<td>${dto.last_name}</td>
	<td>${dto.job_id}</td>
	<td>${dto.salary}</td>
</tr>
</c:forEach>
</table>
</body>
</html>