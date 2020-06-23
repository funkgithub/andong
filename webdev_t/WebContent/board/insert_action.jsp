<%@page import="board.BoardDAO"%>
<%@page import="board.BoardDTO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name    = request.getParameter("name");
	String passwd  = request.getParameter("passwd");
	String title   = request.getParameter("title");
	String content = request.getParameter("content");
	BoardDTO boardDTO = new BoardDTO();
	boardDTO.setName(name);
	boardDTO.setTitle(title);
	boardDTO.setPasswd(passwd);
	boardDTO.setContent(content);
	
	BoardDAO boardDAO = BoardDAO.getInstance();
	boolean result = boardDAO.insertBoard(boardDTO);
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
<script type="text/javascript">
<% if (result) { %>
	location.href='list.jsp';
<% } else { %>
	alert('글쓰기 실패');
	location.href='javascript:history.back()';
<% } %>
</script>
</body>
</html>