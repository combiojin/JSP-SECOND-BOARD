<%@page import="com.cambio.board.boardDBManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cambio.board.boardDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript">
	function popUp1(w, h){
		 x = (screen.availWidth - w) / 2;
		 y = (screen.availHeight - h) / 2;
		 window.open('http://localhost:8090/com.cambio.board/writer.jsp', 'pop','width='+w+', height='+h+', left='+x+', top='+y);
		}
</script>
<style type="text/css">
	.boardlist {
		text-align: center;
		width: 100%;
	}
	table {
		text-align: center;
		margin: 20px auto;
	}
	td {
		width: 200px;
	}
</style>
</head>
<body>
<% 
	boardDBManager bdm = boardDBManager.getInstance();
	List list = bdm.doSelectboard();
%>
	<div class="boardlist">
		<h2>커뮤니티 게시판</h2>
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>내용</th>
				<th>시간</th>
				<th>작성자</th>
			</tr>
<%	
	for (int i = 0 ; i < list.size() ; i++) {
		boardDTO bd = (boardDTO)list.get(i);
%>
			<tr>
				<td style="text-align: center;"><%=bd.getNUM() %></td>
				<td><%= bd.getTitle() %></td>
				<td><%= bd.getContent() %></td>
				<td><%= bd.getModdate() %></td>
				<td><%= bd.getWriter()%></td>
			</tr>
<%
	}
%>
		</table>
	</div>
	<div>
		<a href = "javascript:popUp1(500, 500);"><h4>글쓰기</h4></a>
	</div>
</body>
</html>