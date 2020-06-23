<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<%
	String user_name = (String)session.getAttribute("user_name");
	String user_id = (String)session.getAttribute("user_id");
%>
<%  if (user_id != null) { %>
	main 입니다....<br/>
	<%=user_name + "(" + user_id + ")님이 로그인 하였습니다." %>
	<a href="logout.jsp">logout</a>
<%  } else { %>
<script type="text/javascript">
alert('먼저 로그인을 하셔야 합니다!!!');
location.href='login.jsp';
</script>
<%  } %>
</body>
</html>