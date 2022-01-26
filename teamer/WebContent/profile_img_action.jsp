<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "com.teamer.vo.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String loginEmail  = (String)(session.getAttribute("login_id")); 
	String profileImgUrl = request.getParameter("profileImgUrl");
	String t_index = request.getParameter("t_index");
	
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
	
	String sql = "UPDATE PROFILE SET P_IMAGE = ? WHERE P_T_INDEX = ? AND P_EMAIL = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, profileImgUrl);
	pstmt.setString(2, t_index);
	pstmt.setString(3, loginEmail);

	int ret = pstmt.executeUpdate();
	if(ret == 1){
		%>
		<script>
			window.history.back(); 
		</script>
		<%
	}
		%>
</body>
</html>