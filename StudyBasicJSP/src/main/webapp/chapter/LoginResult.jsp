<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	String result = "";
	String loginSuccessId = "abc";
	String loginSuccessPwd = "1234";
	
	if(id.equals(loginSuccessId) && pwd.equals(loginSuccessPwd))
		result = "SUCCESS";
	else
		result = "FAILURE"; 
	
%>
	<h1>Log-in <%=result%></h1>
</body>
</html>