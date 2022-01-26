<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "javax.mail.*" %>
<%@ page import = "mail.*" %>
<%@ page import = "com.teamer.vo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String username = request.getParameter("user_name");
	String useremail = request.getParameter("user_email");
	String team_name = request.getParameter("teamname");
	String team_domain = request.getParameter("teamdomain");
%>

<script type="text/javascript">
//가상 form 생성
var form = document.createElement('form'); // 폼객체 생성
var objs;
objs = document.createElement('input'); // 값이 들어있는 녀석의 형식
objs.setAttribute('type', 'text'); // 값이 들어있는 녀석의 type
objs.setAttribute('name', 'useremail'); // 객체이름
objs.setAttribute('value', '<%= useremail%>'); //객체값
form.appendChild(objs);
form.setAttribute('method', 'post'); //get,post 가능
form.setAttribute('action', "team_choice.jsp"); //보내는 url
document.body.appendChild(form);
form.submit();	
</script>


<%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "topic12";
	String db_pw = "user1234";
	
	
	Connection conn = null;
	try{
	   Class.forName(driver);
	   conn = DriverManager.getConnection(url,db_id,db_pw);
	} catch(Exception e){
	   e.printStackTrace();
	}
	
	String sql = "UPDATE MEMBERS SET MEM_T_NAME=?,MEM_T_DOMAIN=?||?,ACTIVATE=1 "
			 	+"WHERE MEM_EMAIL=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, team_name);
	pstmt.setString(2, team_domain);
	pstmt.setString(3, ".teamer.com");
	pstmt.setString(4, useremail);
	
	int r = pstmt.executeUpdate();
	if(r==1){
		
		session.setAttribute("login_id", useremail); 
		String sql2 = "INSERT INTO TEAMLIST(T_NAME,T_EMAIL,T_INDEX,T_DOMAIN,T_ACTIVATE)"
				+" VALUES(?,?,'T'||TEAM_SEQ.NEXTVAL,?||?,1)";
		PreparedStatement pstmt2 = conn.prepareStatement(sql2);
		pstmt2.setString(1, team_name);
		pstmt2.setString(2, useremail);
		pstmt2.setString(3, team_domain);
		pstmt2.setString(4,".teamer.com");
		
		pstmt2.executeUpdate();
		
		String sql3 = "INSERT INTO PROFILE(P_EMAIL,P_T_INDEX) VALUES(?,'T'||TEAM_SEQ.CURRVAL)";
		PreparedStatement pstmt3 = conn.prepareStatement(sql3);
		pstmt3.setString(1, useremail);
		pstmt3.executeUpdate();
	%>
		<script type="text/javascript">
	location.href="team_choice.jsp";

		</script>
	<% 
	}
%>



	<script type="text/javascript">

	</script>


</body>
</html>