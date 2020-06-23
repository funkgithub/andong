<%@page import="board.BoardDAO"%>
<%@page import="board.BoardDTO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	long no = Long.parseLong(request.getParameter("no"));
	String title  = request.getParameter("title");
	String name   = request.getParameter("name");
	String passwd = request.getParameter("passwd");
	String content= request.getParameter("content");
	
	BoardDTO boardDTO = new BoardDTO();
	boardDTO.setNo(no);
	boardDTO.setTitle(title);
	boardDTO.setName(name);
	boardDTO.setPasswd(passwd);
	boardDTO.setContent(content);
	
	BoardDAO boardDAO = BoardDAO.getInstance();
	boolean result = boardDAO.updateBoard(boardDTO);
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
alert('<%=no%>번 글이 수정되었습니다.');
location.href='article.jsp?no=<%=no%>';
<% } else {      %>
alert('비밀번호가 틀립니다.');
location.href='javascript:history.back();';
<% }             %>
</script>
</body>
</html>