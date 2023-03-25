<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="Login_ok.jsp" method="post">
		아이디 : <input type="text" name="user_id"><br>
		비밀번호 : <input type="password" name="password"><br>
		<input type="submit" value="로그인"><br><br>
	</form>
		<button onClick = "location = 'MemberForm.jsp'">회원가입</button>&nbsp;
		<button onClick = "location = 'UpdateForm.jsp'">수정</button>&nbsp;
		<button onClick = "location = 'DeleteForm.jsp'">삭제</button>
	
	


</body>
</html>