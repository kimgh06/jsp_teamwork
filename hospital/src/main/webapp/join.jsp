<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript" src="./check.js"></script>
<jsp:include page="./header.jsp"></jsp:include>
<form method="post" action="action.jsp" name="frm" style="display: flex; justify-content: center; align-items: center">
<table>
	<tr><td>id</td><td><input name="id"/></td></tr>
	<tr><td>이름</td><td><input name="name"/></td></tr>
	<tr><td>입원일</td><td><input placeholder="띄어쓰기 없이" name="clinicdate"/></td></tr>
	<tr><td>병명</td><td><input name="reason"/></td></tr>
	<tr><td>생년월일</td><td><input placeholder="띄어쓰기 없이" name="birthday"/></td></tr>
	<tr><td>담당의사 번호</td><td><input name="doctornum"/></td></tr>
	<tr><td colspan="2" style='text-align: center'><input type="button" value="보내기" onclick="addCheck()"><input type="button" value="리셋"onclick="res()"></td></tr>
</table>
</form>
</html>