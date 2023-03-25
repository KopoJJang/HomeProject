<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>권역을 보이게 하는 폼</title>
</head>

	<% 
		
		request.setCharacterEncoding("utf-8");
		String code = request.getParameter("code");
		String result = ""; /* String reuslt; 와 차이 */
		
	
	switch(code){
		case "0" :
			result = "종로, 중구, 용산";
			break;
		case "1" :
			result = "도봉, 강북, 노원, 성북";
			break;
		case "2" :
			result = "도대문, 성동, 중량, 광진";
			break;
		case "3" :
			result = "강동, 송파";
			break;
		case "4" :
			result = "서초, 강남";
			break;
		case "5" :
			result = "동작, 관악, 금천";
			break;
		case "6" :
			result = "강서, 양천, 영등포, 구로";
			break;
		case "7" :
			result = "은평, 마포, 서대문";
			break;
		default:
			result = "존재하지 않는 구역";
			break;
	}
	
	
	%>
<body>
	<h2>선택하신 지역은 <%=result %>입니다.</h2>
</body>
</html>