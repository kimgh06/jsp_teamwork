<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String name = request.getParameter("name");
String clinicdate = request.getParameter("clinicdate");
String reason = request.getParameter("reason");
String birthday = request.getParameter("birthday");
String docnum = request.getParameter("doctornum");
try{
	Connection conn = Util.getConnection();
	System.out.println(name+ clinicdate+ reason+ birthday+ docnum);	
	String sql = "insert into client values("+Integer.parseInt(id)+",'"+name+"','"+clinicdate+"','"+reason+"','"+birthday+"',"+Integer.parseInt(docnum)+")";
	PreparedStatement psmt = conn.prepareStatement(sql);
	psmt.executeUpdate();%>
	<jsp:forward page="./join.jsp"></jsp:forward>
	<%
	
}catch(Exception e){
	e.printStackTrace();	
}

%>