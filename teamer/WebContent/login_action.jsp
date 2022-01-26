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
String useremail = request.getParameter("useremail");
String userpassword = request.getParameter("userpassword");
	 
	 
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

	String sql = "SELECT COUNT(*) FROM MEMBERS WHERE MEM_EMAIL = ? AND MEM_PW = ? AND ACTIVATE = 1";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, useremail);
	pstmt.setString(2, userpassword);
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()){
		int ret = rs.getInt(1);
		if(ret == 1){
			// 페이지 이동 (로그인 성공)
			session.setAttribute("login_id", useremail);
			%>
			<script type="text/javascript">
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
		}else{
			%>
			<script type="text/javascript">
				alert("아이디 or 비밀번호가 잘못되었습니다.")
				window.history.back();
			</script>
			<%
		}
	}
	
%>


</body>
</html>