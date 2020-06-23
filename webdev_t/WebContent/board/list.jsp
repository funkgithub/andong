<%@page import="board.BoardDAO"%>
<%@page import="board.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardDAO boardDAO = BoardDAO.getInstance();
	List<BoardDTO> list = boardDAO.getBoardList();
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
<table border="1">
	<caption>게시물 리스트</caption>
<tr>
	<th>글번호</th>
	<th>제목</th>
	<th>작성자</th>
	<th>날짜</th>
	<th>조회수</th>
</tr>
<% 		for(BoardDTO boardDTO:list) { %>
<tr>
	<td><%= boardDTO.getNo() %></td>
	<td><a href="article.jsp?no=<%= boardDTO.getNo() %>"><%= boardDTO.getTitle() %></a></td>
	<td><%= boardDTO.getName() %></td>
	<td><%= boardDTO.getRegdate() %></td>
	<td><%= boardDTO.getReadcount() %></td>
</tr>
<%		} %>
</table><br/>
<a href="insert.jsp">글쓰기</a><br/>

</body>
</html>