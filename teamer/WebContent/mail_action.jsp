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
// 사용자가 입력한 인증번호
String user_random = 
	request.getParameter("ran1")+
	request.getParameter("ran2")+
	request.getParameter("ran3")+
	request.getParameter("ran4");

// 사용자 이메일
String user_email = request.getParameter("user_email");

// 사용자 이름
String user_name = request.getParameter("mem_name");

int com_random = 0;
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

String sql = "SELECT MEM_RANDOMNUM FROM MEMBERS WHERE MEM_EMAIL = ?";
PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1, user_email);
ResultSet rs = pstmt.executeQuery();
while(rs.next()){
	 com_random = rs.getInt("MEM_RANDOMNUM");
}

String com_ran = String.valueOf(com_random);

boolean repeat = true;

if(com_ran.equals(user_random)){
	%>
	<script type="text/javascript">
		
		
	//가상 form 생성
	var form = document.createElement('form'); // 폼객체 생성
	
	var objs;
	objs = document.createElement('input'); // 값이 들어있는 녀석의 형식
	
	objs.setAttribute('type', 'text'); // 값이 들어있는 녀석의 type
	
	objs.setAttribute('name', 'user_email'); // 객체이름
	
	objs.setAttribute('value', '<%= user_email%>'); //객체값
	
	form.appendChild(objs);
	
	form.setAttribute('method', 'post'); //get,post 가능
	
	form.setAttribute('action', "teamer_create_account4.jsp"); //보내는 url
	
	document.body.appendChild(form);
	
	form.submit();	
	</script>
	<%
}
else{
	%>
	<script type="text/javascript">
		alert("인증번호가 틀렸어요. 다시 입력해주세요.");
		window.history.back();
	</script>
	<%
}
%>

</body>
</html>