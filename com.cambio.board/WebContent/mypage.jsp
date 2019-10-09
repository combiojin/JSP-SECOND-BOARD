<%@page import="com.cambio.board.memberDTO"%>
<%@page import="com.cambio.board.boardDBManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	function reload() {
		opener.parent.location.reload();
		window.close();
	}
</script>

<style type="text/css">
	.page {
		width: 100%;
		text-align: center;
		text-decoration: none;
	}
	.page table{
		text-align: center;
		margin: auto;
	}
	.pageinput {
		text-align: center;
		margin: auto;
	}
	.pageinput input {
		width: 100px;
		height: 40px;
		border-radius: 50px;
		border: none;
		background-color: black;
		color: white;
	}
	.pageinput input:hover {
		background-color: white;
		color: black;
	}
	.page table input {
		border: 0;
		text-align: center;
	}
	.h2page {
		color: red;
	}
	h2 {
		text-align: center;
	}
	button {
		width: 100px;
		height: 40px;
		border-radius: 50px;
		border: none;
		background-color: black;
		color: white;
	}
	button:hover {
		background-color: white;
		color: black;
	}
</style>
<%
	String id = (String)session.getAttribute("id");
	if(id == null || id.equals("")){
		out.println("<h2 style = 'text-align: center;'>로그인 해야 접근가능한 메뉴 입니다.<h2>");
		out.println("<button onclick='reload();'>확인</button>");
	} else {
	// ID를 가지고 가서 한행의 데이터를 가지고 온다.
		boardDBManager bdm = boardDBManager.getInstance();
		memberDTO md = bdm.doSelectRow(id);
%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="mypageProc.jsp" method="post">
		<div class="page">
			<h2>회원정보</h2>
			<h2 class="h2page">비밀번호 / 주소 / 전화번호 / 메일 수정 가능합니다.</h2>
			<table>
				<tr><td><h3>아이디</h3></td></tr>
				<tr><td><%=md.getId() %></td></tr>
				<tr><td><h3>비밀번호</h3></td></tr>
				<tr><td><input type = "text" name = "pw" value = "<%=md.getPw()%>"></td></tr>
				<tr><td><h3>이름</h3></td></tr>
				<tr><td><%=md.getName()%></td></tr>
				<tr><td><h3>성별</h3></td></tr>
				<tr><td><%=md.getGender()%></td></tr>
				<tr><td><h3>생년월일</h3></td></tr>
				<tr><td><%=md.getAge()%></td></tr>
				<tr><td><h3>주소</h3></td></tr>
				<tr><td><input type = "text" name = "are" value = "<%=md.getAre()%>"></td></tr>
				<tr><td><h3>전화번호</h3></td></tr>
				<tr><td><input type = "text" name = "phone" value = "<%=md.getPhone()%>"></td></tr>
				<tr><td><h3>E-MAIL</h3></td></tr>
				<tr><td><input type = "text" name = "mail" value = "<%=md.getMail()%>"></td></tr>
			</table><br>
		</div>
		<div class="pageinput" >
			<input type = "submit" value="수정">
		</div>
	</form>
</body>
</html>
<% 
	}
%>