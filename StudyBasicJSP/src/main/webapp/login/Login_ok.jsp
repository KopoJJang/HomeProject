<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
    
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("user_id");
	String pw = request.getParameter("password");
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	try{
		// 드라이버 호출
		Class.forName("org.mariadb.jdbc.Driver");
		
		// conn 생성
		con = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/test_db","root","1234");

		// pstmt 생성
		pstmt = con.prepareStatement("select * from test where user_id = (?) and password = (?)");
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		
		
		// sql실행
		rs = pstmt.executeQuery();
		
		if(rs.next()){ // 로그인 성공(인증의 수단 session)
			id = rs.getString("user_id");
		
			session.setAttribute("user_id", id);
			
			response.sendRedirect("Login_Welcome.jsp"); // 페이지이동
			
		} else{ // 로그인 실패
			response.sendRedirect("Login_fail.jsp"); // 실패 페이지
		}
	} catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("Login.jsp"); // 에러가 난 경우도 리다이렉트
	
	}finally{
		if(pstmt!= null){
			try{
				pstmt.close();
			}catch(SQLException e){
		}
		if(con != null){
			try{
				con.close();	
			}catch(SQLException e){
				
			}
		}
	}
}
 %>