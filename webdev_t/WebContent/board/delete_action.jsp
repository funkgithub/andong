<%@page import="board.BoardDAO"%>
<%@page import="board.BoardDTO"%>
<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	long no = Long.parseLong(request.getParameter("no"));
	String passwd = request.getParameter("passwd");

	BoardDTO boardDTO = new BoardDTO();
	boardDTO.setNo(no);
	boardDTO.setPasswd(passwd);
	
	BoardDAO boardDAO = BoardDAO.getInstance();
	boolean result = boardDAO.deleteBoard(boardDTO);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/favicon.png">
<title>게시물 삭제 액션</title>
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
<%	if(result) { %>
	alert('<%=no%>번 게시물이 삭제되었습니다.');
	location.href='list.jsp';
<%  } else     { %>
	alert('비밀번호가 틀립니다.');
	location.href='javascript:history.back();';
<%  }            %>
</script>
</body>
</html>