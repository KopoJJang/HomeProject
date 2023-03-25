<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="infoOut.jsp">
		<table>
			<tr>
				<td colspan="2" align = "center">사용자 정보 입력 폼</td>
			</tr>
			<tr height = "70">
				<td width = "200" bgcolor = "#D1B2FF">성명:</td>
				<td width = "350"><input type = "text" size = "20" name = "name"></td>
			</tr>
			<tr height = "50">
				<td bgcolor = "#D1B2FF">전화번호:</td>
				<td> 
					<select name = "localNum">
					<option value = "서울">서울</option>
					<option value = "경기">경기</option>
					<option value = "부산">부산</option>
					</select>
				<input type = "text" size = "10" name = "tel1">
				<input type = "text" size = "10" name = "tel2">
				</td>
			</tr>
			<tr  height = "50">
				<td colspan = "2" align = "center" bgcolor = "#D1B2FF">
					<button type = "submit">확인</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>