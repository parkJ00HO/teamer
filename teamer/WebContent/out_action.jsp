<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.File" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h1>여기서 데이터베이스저장</h1>
<%


	String domain = request.getParameter("domain");
	String owner = request.getParameter("owner");
	String image = request.getParameter("image");
	String loginEmail = request.getParameter("login_id");
	String t_index = request.getParameter("t_index");
	
	System.out.println(image + " //// " + loginEmail + "////" + t_index);
	
	request.setCharacterEncoding("UTF-8");
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "topic12";
	String db_pw = "user1234";
	
	Connection conn = null;
	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url,db_id,db_pw);
	}catch(Exception e){
		e.printStackTrace();
	}
	
	String sql = "UPDATE PROFILE SET P_IMAGE = ? WHERE P_EMAIL = ? AND P_T_INDEX = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, image);
	pstmt.setString(2, loginEmail);
	pstmt.setString(3, t_index);
	int r = pstmt.executeUpdate();
	System.out.println(r);
	if(r == 1){
		System.out.println("IMAGE UPLOAD!!");
			
		%>
			<script type="text/javascript">

		<%-- 	var team_data = {domain : <%=domain%>, owner : <%=owner%> };
			sendPost("mainpage.jsp", team_data); --%>

			 location.href = "mainpage.jsp?domain="+"<%=domain%>"+"&owner="+"<%=owner%>";  
				
				
			</script>
		<%
	}
	
	
%>
</body>
</html>