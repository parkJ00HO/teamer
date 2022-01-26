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

String profile_department = request.getParameter("profile_department");
String profile_position = request.getParameter("profile_position");
String profile_birth = request.getParameter("profile_birth");
String profile_phone = request.getParameter("profile_phone");

String t_domain = request.getParameter("domain");
String t_index = request.getParameter("t_index"); 	
String loginEmail  = (String)(session.getAttribute("login_id")); 

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

String sql = "UPDATE PROFILE SET P_DEPARTMENT = ?, P_POSITION =?, P_BIRTH = ?,P_PHONE = ? WHERE P_T_INDEX = ? AND P_EMAIL = ?";
PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1, profile_department);
pstmt.setString(2, profile_position);
pstmt.setString(3, profile_birth);
pstmt.setString(4, profile_phone);
pstmt.setString(5, t_index);
pstmt.setString(6, loginEmail);
int ret = pstmt.executeUpdate();
if(ret == 1){
	//업데이트 성공
	%>
	<script>
		window.history.back();
	</script>
	<%
}


%>

</body>
</html>