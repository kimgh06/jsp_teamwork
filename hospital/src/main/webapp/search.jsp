<%@page import="DBPKG.Util"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="./header.jsp"></jsp:include>
<table border='1'>
<tr>
	<td>id</td>
	<td>name</td>
	<td>clinicDate</td>
	<td>reason</td>
	<td>birthday</td>
	<td>doctor</td>
	<td>department</td>
</tr>

<%
Connection conn = null;
Statement stmt = null;
String grade = "";

try{
	conn = Util.getConnection();
	stmt = conn.createStatement();
	String sql = "select c.id, c.name, clinicdate, reason, birthday, d.name docname, d.department de from client c, doctor d where c.doctor = d.id";
	ResultSet rs = stmt.executeQuery(sql);
	while(rs.next()){
	%>
		<tr>
		<td><%=rs.getString("id") %></td>
		<td><%=rs.getString("name") %></td>
		<td><%=rs.getDate("clinicdate") %></td>
		<td><%=rs.getString("reason") %></td>
		<td><%=rs.getDate("birthday") %></td>
		<td><%=rs.getString("docname") %></td>
		<td><%=rs.getString("de") %></td>
		<tr>
		<% 
	}
	
	
}catch(Exception e){
	e.printStackTrace();
}
%>
</table>
</body>
</html>