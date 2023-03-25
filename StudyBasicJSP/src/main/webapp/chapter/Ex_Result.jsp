<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	/* String rowsStr = request.getParameter("rows"); */
	int rows = Integer.parseInt(request.getParameter("rows"));
	String evenColor = "#F6F6F6";
	String oddColor = "#E8D9FF";
	String bg = "";
%>

<body>
	<table border = "1">
		<tr align = "center" bgcolor = "#E4F7BA">
			<td>글번호</td>
			<td width = "300">글제목</td>		
			<td width = "400">글내용</td>	
		</tr>
		
		<%
			for(int i = rows; i > 0; i--){
				if (i % 2 == 0){
					bg = evenColor;
				}
				else {
					bg = oddColor;
				}
		%>
			<tr>
				<td bgcolor="<%=bg%>"><%=i %></td>
				<td bgcolor="<%=bg%>">제목 <%=i %></td>
				<td bgcolor="<%=bg%>">내용 <%=i %></td>
			</tr>
		<%
			}
		%>
	</table>
</body>
</html>