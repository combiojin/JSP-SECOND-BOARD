<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	session.invalidate(); // 전체삭제
	out.println("로그아웃 되었습니다.");
	out.println("<a href = \"home.jsp\">첫페이지로</a>");
%>