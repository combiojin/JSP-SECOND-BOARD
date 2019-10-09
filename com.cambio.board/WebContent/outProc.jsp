<%@page import="com.cambio.board.boardDBManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");

	boardDBManager bdm = boardDBManager.getInstance();
	boolean result = bdm.doDeletRow(id);
	if(result) {
		out.println("<h3>회원탈퇴 하였습니다.</h3>");
		session.invalidate();
	} else {
		out.println("<h3>회원탈퇴 실패 하였습니다.</h3>");
	}
%>
<script type="text/javascript">
	function reload() {
		opener.parent.location.reload();
		window.close();
	}
</script>
<style>
	h3 {
		text-align: center;
	}
	div {
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
	<div>
		<button onclick="reload();">확인</button>
	</div>