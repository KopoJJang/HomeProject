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
		String strNumber = request.getParameter("number");
		
		// 폼으로부터 넘어온 값들은 모두 문자열 취급을 받게 된다. 만일 숫자 값을 넘겨 받게 되어도 이 값은 문자형 숫자가 된다.
		int number = Integer.parseInt(strNumber);
		
		if(number < 10){
	%>
	
	입력받은 숫자는 <%=number %> 입니다.
	
	<%} %>
</body>
</html>