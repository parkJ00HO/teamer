<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.teamer.vo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8");
	String profile_pronounce = request.getParameter("profile_pronounce");
	String profile_state = request.getParameter("profile_state");
	String profile_statemessage = request.getParameter("profile_statemessage");
	String profile_department = request.getParameter("profile_department");
	String profile_position = request.getParameter("profile_position");
	String profile_birth = request.getParameter("profile_birth");
	String profile_phone = request.getParameter("profile_phone");
	
	String t_domain = request.getParameter("domain");
	String t_index = request.getParameter("t_index"); 	
	String loginEmail  = (String)(session.getAttribute("login_id")); 
	String domainA = request.getParameter("domainA");
	String ownerA = request.getParameter("ownerA");
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "topic12";
	String db_pw = "user1234";
	
	Connection conn = null;
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, db_id, db_pw);
	} catch(Exception e) {   // ClassNotFoundException, SQLException
		e.printStackTrace();
	}
	
	String sql = "UPDATE PROFILE SET P_PRONOUNCE = ?, P_STATE =?, P_STATEMESSAGE = ?, P_DEPARTMENT = ?, P_POSITION =?, P_BIRTH = ?,P_PHONE = ? WHERE P_T_INDEX = ? AND P_EMAIL = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, profile_pronounce);
	pstmt.setString(2, profile_state);
	pstmt.setString(3, profile_statemessage);
	pstmt.setString(4, profile_department);
	pstmt.setString(5, profile_position);
	pstmt.setString(6, profile_birth);
	pstmt.setString(7, profile_phone);
	pstmt.setString(8, t_index);
	pstmt.setString(9, loginEmail);
	int ret = pstmt.executeUpdate();
	if(ret != 0){
		//업데이트 성공
		%>
		<script>
		/* 	window.history.back();  */
			location.href = "mainpage.jsp?domain="+"<%=domainA%>"+"&owner="+"<%=ownerA%>";
			// 이 형식으로 만들어야함
			<%-- location.href = "mainpage.jsp?domain="+"<%=domain%>"+"&owner="+"<%=owner%>";   --%>
		</script>
		<%
	}
	
%>
</body>
</html>