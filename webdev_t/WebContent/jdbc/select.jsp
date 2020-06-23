<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	StringBuffer sql = new StringBuffer();
	sql.append("select last_name, salary, job_id ");
	sql.append("from   employees ");
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:xe", "n1", "n1");
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql.toString());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/favicon.png">
<title>Insert title here</title>
</head>
<body>
<h1>employees</h1>
<table border="1">
<tr>
	<th>이름</th>
	<th>급여</th>
	<th>업무</th>
</tr>
<%		while(rs.next()) { %>
<tr>
	<td><%=rs.getString("last_name") %></td>
	<td><%=rs.getInt("salary") %></td>
	<td><%=rs.getString("job_id") %></td>
</tr>
<%	
		}
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		if (rs != null)try{rs.close();  }catch(Exception e){}
		if (stmt!=null)try{stmt.close();}catch(Exception e){}
		if (conn!=null)try{conn.close();}catch(Exception e){}
	}
%>
</table>
</body>
</html>