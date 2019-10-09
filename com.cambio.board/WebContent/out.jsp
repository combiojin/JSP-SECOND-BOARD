<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function doBack() {
// 		alert('아니오 누름');
		opener.parent.location.reload();
		window.close();
	}
	function doSubmit() {
// 		alert('네 누름');
		location.href = "outProc.jsp";
		opener.parent.location.reload();
		window.close();
	}
	function reload() {
		opener.parent.location.reload();
		window.close();
	}
</script>
<style type="text/css">
	div {
		width: 100%;
		margin: auto;
		text-align: center;
	}
	h2 {
		text-align: center;
	}
	.outh3{
		text-align: center;
		color: red;
	}
	button {
		text-align: center;
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
</head>
<body>
	<div>
		<h2>회원탈퇴</h2>
		<%
			String id = (String) session.getAttribute("id");
			
			if( id == null ){ 
		%>
			<h3 class="outh3">회원가입 먼저 부탁드립니다.</h3>
			<button onclick="reload();">확인</button>
		<%}else{ %>
			<h3 class="outh3">회원탈퇴 하시겠습니까?</h3><br>
		<button onclick="doBack();">아니오</button>
		<button onclick="doSubmit();">네</button>
	</div>
	<%} %>
</body>
</html>