<%@page import="java.util.Calendar" %>
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
<!-- html 주석 -->
<%--   // scriptlet
	/*     
	멀티라인주석	
	*/

	// 라인 주석
--%>
<%
	Calendar c = Calendar.getInstance();
	int year = c.get(Calendar.YEAR);
	int month= c.get(Calendar.MONTH) + 1;
	int date = c.get(Calendar.DATE);
	out.println("<h1>" + year + "/" + month + "/" + date + "</h1>");
%>
<h1><%=year %>/<%=month %>/<%=date %></h1>
<h1><%=year +"/"+month+"/"+ date %></h1>
</body>
</html>



