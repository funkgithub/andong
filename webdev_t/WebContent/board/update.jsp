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
<title>글 수정</title>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style type="text/css">
body {
		font-family: 'Nanum Pen Script', cursive;
		font-size:25px;
     }
</style>
</head>
<body>
<form action="update_action.jsp" method="post">
<%		if(boardDTO != null){ %>
<table>
<caption>게시물 수정</caption>
<tr>
	<th>글번호</th>
	<td><%=boardDTO.getNo() %>
		<input type="hidden" name="no" 
		value="<%=boardDTO.getNo() %>" /></td>
</tr>
<tr>
	<th>이름</th>
	<td><input type="text" name="name" 
		value="<%=boardDTO.getName() %>" autofocus="autofocus" required="required"/></td>
</tr>
<tr>
	<th>비밀번호</th>
	<td><input type="password" name="passwd"  required="required"/><br/>
		* 처음 게시물 작성시 입력 했던 비밀번호를 재입력
	</td>
</tr>
<tr>
	<th>제목</th>
	<td><input type="text" name="title" 
		value="<%=boardDTO.getTitle() %>"  required="required"/></td>
</tr>
<tr>
	<th>내용</th>
	<td><textarea rows="8" cols="60" name="content"  required="required"><%=boardDTO.getContent() %></textarea></td>
</tr>
<tr>
	<th></th>
	<td>
		<button type="submit">완료</button>
		<button type="reset">초기화</button>
	</td>
</tr>
</table>
<%		} %>
</form>
</body>
</html>
