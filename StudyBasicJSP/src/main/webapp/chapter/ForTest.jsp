<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>2022년도 2학기 교과과정</h1>
<%

	String[] words = {"hi", "hello", "good morning", "good afternoon", "good evening", "good night"};
	/* String[] subjects = {"Java Programming", "웹프로그래밍 활용", "Python", "데이터베이스 실습", "Adroid Programming"}; */
	for(int i = 0; i < words.length; i++){
%>
	
	<h2><%=words[i] %></h2>
<% 
	}
%>
</body>
</html>