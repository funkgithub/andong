<%@page import="board.BoardDAO"%>
<%@page import="board.BoardDTO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	long no = Long.parseLong(request.getParameter("no"));
	BoardDAO boardDAO = BoardDAO.getInstance();
	BoardDTO boardDTO = boardDAO.getArticle(no);
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
<%		if(boardDTO != null) { %>
<table border="1">
	<caption>글 상세보기</caption>
<tr>
	<th>글번호</th>
	<td><%=boardDTO.getNo() %></td>
</tr>
<tr>
	<th>제목</th>
	<td><%=boardDTO.getTitle() %></td>
</tr>
<tr>
	<th>작성자</th>
	<td><%=boardDTO.getName() %></td>
</tr>
<tr>
	<th>내용</th>
	<td><%=boardDTO.getContent() %></td>
</tr>
<tr>
	<th>작성일</th>
	<td><%=boardDTO.getRegdate() %></td>
</tr>
<tr>
	<th>조회수</th>
	<td><%=boardDTO.getReadcount() %></td>
</tr>
</table><br/>
<a href="list.jsp">리스트</a>
<a href="update.jsp?no=<%=boardDTO.getNo()%>">수정</a>
<a href="delete.jsp?no=<%=boardDTO.getNo()%>">삭제</a>
<%		} %>

</body>
</html>