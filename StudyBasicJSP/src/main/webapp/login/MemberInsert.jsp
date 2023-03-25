<%@page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 추가</title>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("user_id");
	String passwd = request.getParameter("password");
	String name = request.getParameter("name");
	String url = "jdbc:mariadb://127.0.0.1:3306/test_db";
	String ID = "root";
	String PWD = "1234";
	String DriverPath = "org.mariadb.jdbc.Driver";
	Connection con = null;
	PreparedStatement pstmt = null;
	
	
	String msg = "";
	
	try{
		Class.forName(DriverPath); //JDBC Driver Loading(객체생성)
		System.out.println("Driver Class를 정상적으로 로드했습니다.");
		con = DriverManager.getConnection(url, ID, PWD);
		System.out.println("정상적으로 연결되었습니다..");
		
		String sql = "INSERT INTO test (user_id, password, name) values(?,?,?)";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		pstmt.setString(3, name);
		pstmt.executeUpdate();
		
		
		msg = "회원가입이 정상적으로 이루어졌습니다.";
		out.print("<h2> 회원가입이 정상적으로 이루어졌습니다.</h2>");

		%>
		<button onClick = "location = 'Login.jsp'">초기화면</button>
		
<% 
	}catch(ClassNotFoundException e){
		System.out.println("JDBC Driver를 찾을 수 없습니다.");
		
	}catch(SQLException e){
		System.out.println("회원가입이 실패했습니다.");
		msg = "회원가입이 실패했습니다.";
		
		System.out.println(msg);
		System.out.println("연결이 되지 않았습니다.");
	
	}finally{
		if(pstmt != null){
			try{
				con.close();
			} catch(SQLException e){
				
			}
		}
		if(con != null){
			try{
				con.close();
			} catch(SQLException e){
				
			}
		}
	}
%>
</body>


</html>