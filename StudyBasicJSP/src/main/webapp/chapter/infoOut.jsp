<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String localNum = request.getParameter("localNum");
	String tel1 = request.getParameter("tel1");
	String tel2 = request.getParameter("tel2");
	String num;
	
	if(localNum.equals("서울"))
		num = "02";
	else if(localNum.equals("경기"))
		num = "031";
		else
			num = "051";
%>
<body>
		<table>
			<tr>
				<td colspan="2" align = "center" bgcolor = "#D4F4FA" >사용자 정보 확인</td>
			</tr>
			<tr>
				<td width = "250" bgcolor = "#FFD0EC">성명:</td>
				<td width = "350" ><%=name %> </td>
			</tr>
			<tr>
				<td bgcolor = "#FFD9EC">전화번호 : </td>
				<td>
					<%=num %> - <%=tel1 %> - <%=tel2 %>
				</td>
			</tr>
		</table>
</body>
</html>