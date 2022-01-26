<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
	
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
	
	String t_name = request.getParameter("t_name");
	String t_domain = request.getParameter("t_domain");
	
	String sql = "insert into teamlist(t_name,t_domain,t_index,t_email,t_activate) "
				+ "values(?,?||?,'T'||TEAM_SEQ.nextval,?,1)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, t_name);
	pstmt.setString(2, t_domain);
	pstmt.setString(3, ".teamer.com");
	pstmt.setString(4,loginEmail);
	int teamList_ret = pstmt.executeUpdate();
	if(teamList_ret==1) {
		String sql2 = "insert into profile(p_email, p_t_index) values(?,'T'||TEAM_SEQ.currval)";
		PreparedStatement pstmt2 = conn.prepareStatement(sql2);
		pstmt2.setString(1,loginEmail);
		
		pstmt2.executeUpdate();
%>
		<script>
		 location.href="team_choice.jsp";
		 </script>
<%
	}
%>
  
      <script>
        
      </script>
</body>
</html>