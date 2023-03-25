<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%=id %>님 안녕하세요. 환영합니다! <br>

	<a href="Logout.jsp">로그아웃</a>
	<a href="UpdateForm.jsp">정보 수정</a><br/>
	
</body>
</html>