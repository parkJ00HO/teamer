<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	String loginEmail = (String)(session.getAttribute("login_id"));  
	String t_index = request.getParameter("team_index");
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

	String topic_name = request.getParameter("topic_name");    
	String t_public =request.getParameter("t_public");
	String sql = "insert into topic(t_id,t_name,t_public,t_member,t_bookmark,t_t_index) "
				+ "values('TO'||TOPIC_SEQ.nextval,?,?,?,0,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, topic_name);
	pstmt.setString(2, t_public);
	pstmt.setString(3, loginEmail);
	pstmt.setString(4, t_index);
	int topic_ret = pstmt.executeUpdate();
	if(topic_ret==1) {
%>
	<script>
		window.history.back();		
	</script>
<%} %>
</head>
<body>
</body>
</html>