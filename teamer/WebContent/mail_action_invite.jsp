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
//초대하려는 이메일
String user_email = request.getParameter("email");
String[] inviteEmailArr = user_email.split(","); 

//이메일이 가입된 회원인지 체크
String sql2 = "select mem_email from members"; 
PreparedStatement pstmt2 = conn.prepareStatement(sql2); 
ResultSet rs = pstmt2.executeQuery();

String email = "";
ArrayList<String> mem_email = new ArrayList<String>(); 

while(rs.next()){
	email = rs.getString("mem_email");
	mem_email.add(email); 
}

int count = 0; 
for(int i=0; i<inviteEmailArr.length;i++){
	if(mem_email.contains(inviteEmailArr[i])){
		count = count + 1; 
	}
}
//배열 보내짐
//회원가입이 된 상태
if(count>0)	{
	
	SendMail_invite.send(inviteEmailArr);
	// 해당 팀 인덱스
	String t_index = request.getParameter("t_index");
	
	//split된 이메일 _로 합치기
	String str = "";
	for(int i=0; i<inviteEmailArr.length; i++){
		if(i==inviteEmailArr.length-1){
			str += inviteEmailArr[i];
		}
		else
			str += inviteEmailArr[i] + "_";
	}
	
	String sql = "UPDATE TEAMLIST SET T_EMAIL = T_EMAIL ||'_'|| ? WHERE T_INDEX = ? ";
	
	//선택한 팀 인덱스 가져와야함!! 
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, str);
	pstmt.setString(2, t_index);
	pstmt.executeQuery();
	
	//프로필에 정보 추가
	PreparedStatement pstmt3;
	for(int i = 0; i<inviteEmailArr.length; i++ ){
		sql = "INSERT INTO PROFILE(P_EMAIL, P_T_INDEX) VALUES (?,?)"; 
		pstmt3 = conn.prepareStatement(sql);
		pstmt3.setString(1,inviteEmailArr[i]);
		pstmt3.setString(2, t_index);
		pstmt3.executeUpdate();	
	}
	count = 0;
}
else{
	%>
	<script>
		alert("회원가입 되어있지 않은 이메일입니다. 다시 입력해 주세요.")
		window.history.back(); 
	</script>
<%}

%>

<script>
 window.history.back(); 
/* location.reload(); */
</script>

</body>
</html>