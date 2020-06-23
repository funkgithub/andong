<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 구글 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="../css/site.css">


<link rel="icon" type="image/png" sizes="16x16" href="/webdev/kitty.png">
<title>Insert title here</title>
</head>
<body>
<%
	String name = null;
	String id = null;
	int level = -1;
	
	if (session.getAttribute("name") != null) {
		name = (String) session.getAttribute("name");
		out.println("name : " + name + "<a href='delete_session.jsp?key=name'>삭제</a><br/>");
	} else {
		out.println("name : 세션값은 존재하지 않습니다.<br/>");
	}

	if (session.getAttribute("id") != null) {
		id = (String) session.getAttribute("id");
		out.println("id : " + id + "<a href='delete_session.jsp?key=id'>삭제</a><br/>");
	} else {
		out.println("id : 세션값은 존재하지 않습니다.<br/>");
	}
	
	if (session.getAttribute("level") != null) {
		level = (int)session.getAttribute("level");
		out.println("level : " + level + "<a href='delete_session.jsp?key=level'>삭제</a><br/>");
	} else {
		out.println("level : 세션값은 존재하지 않습니다.<br/>");
	}
%><br/>
<a href="invalidate_session.jsp">세션 종료</a>

<a href="session_form.jsp">세션 생성 폼</a>
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>