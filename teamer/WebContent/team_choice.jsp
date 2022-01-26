<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.teamer.vo.*" %>
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
	
	ArrayList<teamlistVO> list = new ArrayList<teamlistVO>();
	
	String sql="SELECT T_NAME, T_DOMAIN ,T_INDEX FROM TEAMLIST WHERE T_EMAIL LIKE ? " ; 
	PreparedStatement pstmt=conn.prepareStatement(sql); 
	pstmt.setString(1, "%"+loginEmail+"%"); 
	ResultSet rs=pstmt.executeQuery(); 
	String t_name=null;
	String t_domain=null;
	String t_index=null;
	while(rs.next()) { 
		t_name=rs.getString("t_name"); 
		t_domain=rs.getString("t_domain"); 
		t_index = rs.getString("t_index");
		list.add(new teamlistVO(t_name, t_domain,t_index));
	} 
	
	String sql2="SELECT MEM_NAME, MEM_EMAIL FROM MEMBERS WHERE MEM_EMAIL=?" ; 
	PreparedStatement pstmt2=conn.prepareStatement(sql2); 
	pstmt2.setString(1, loginEmail); 
	ResultSet rs2=pstmt2.executeQuery(); 
	String mem_name=null;
	String mem_email = null;
	while(rs2.next()) { 
		mem_name = rs2.getString("mem_name");
		mem_email = rs2.getString("mem_email");
	} 
	
	String sql3 = "select t_domain,t_email from teamlist where t_email like ?";
	PreparedStatement pstmt3 = conn.prepareStatement(sql3);
	pstmt3.setString(1,loginEmail+"%");
	ResultSet rs3 = pstmt3.executeQuery();
	ArrayList<String> listTeamOwner = new ArrayList<String>();
	
	while(rs3.next()) {
		String tDomain = rs3.getString("t_domain");
		//String memEmail = rs3.getString("t_email");
		listTeamOwner.add(tDomain);
	}  
	
	//System.out.println(listTeamOwner);
%> 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<style>
     @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;600;900&display=swap");
     * {
       font-family: "Noto Sans KR";
     }
	 .header {
	  /* min-width: 780px; */
	  /* width: 950px; */
	  height: 60px;
	  background-color: #fff;
	  box-shadow: 0 1px 3px 0 rgb(0 0 0/12%);
	  /* padding: 13px 20px 13px 154px; */
	  position: fixed;
	  left: 0px;
	  top: 0px;
	  right: 0px;
	}
	.header .logo_img {
	  height: 35px;
	  vertical-align: top;
	  margin-top: 11px;
	  margin-left: 30px;
	  float: left;
	}
	.btn {
	  background-color: #5c9df2;
	  color: #fff;
	  border-radius: 3px;
	  font-weight: 500;
	  height: 33px;
	  line-height: 35px;
	  padding: 0 18px 0 41px;
	  position: relative;
	  display: inline-block;
	  margin-top: 14px;
	  margin-left: 20px;
	  font-size: 15px;
	  text-decoration: none;
	}
	.header .profile_img {
	  height: 28px;
	  width: 28px;
	  border-radius: 50%;
	  float: left;
	  margin-top: 5px;
	  padding-right: 10px;
	  box-sizing: content-box;
	}
	.header .header_text {
	  /* font-family: "Helvetica Neue", "Apple SD Gothic Neo", sans-serif, fontAwesome; */
	  height: 38px;
	  line-height: 38px;
	  font-size: 16px;
	  font-weight: 700;
	  color: rgb(85, 85, 85);
	  text-align: left;
	  padding-left: 16px;
	  padding-right: 11px;
	  float: right;
	  margin-top: -34px;
	}
	.header .header_text:after {
	  content: " ";
	  position: absolute;
	  color: black;
	  right: 100px;
	  width: 1px;
	  height: 22px;
	  top: 33px;
	  margin-top: -11px;
	  background-color: rgba(0, 0, 0, 0.12);
	}
	.container {
	  height: 800px;
	  width: 950px;
	  background-color: #f9f9f9;
	  position: static;
	  margin-top: 40px;
	}
	.section.section.main-account {
	  background-color: green;
	  height: 113px;
	  width: 950px;
	}
	.ng-scope {
	  color: rgb(119, 119, 119);
	  background-color: black;
	}
	.i_pcApp{
		margin-left: -20px; 
		height: 25px; 
		width: 25px;
	}
	.teamchoose_profile{
		width: 780px; 
		height: 113px; 
		margin: 130px auto;
	}
	.teamchoose_profile2{
		float: left; 
		padding-bottom: 20px; 
		color: #999999
	}
	.teamchoose_email{
		 float: left; 
		 padding-left: 10px; 
		 padding-top: 8px; 
		 color: #999999; 
	}
	.teamchoose_name{
		float: left; 
		padding-left: 10px; 
		font-size: 22px; 
		font-weight: 600;
	}
	.teamchoose_pencil{
		width: 14px; 
		height: 14px
	}
	.teamchoose_teamlist{
		color: #999999; 
		width: 780px; 
		height: 18px; 
		margin: 20px auto; 
		margin-top: -110px; 
	}
	#teamchoose_div{
		width: 780px; 
		height: 113px;
		margin: 25px auto; 
		border: 1px solid rgb(0, 0, 0, 0.11); 
		border-radius: 3px; 
		margin-top: -10px; 
	}
	.teamchoose_jabcho_img{
		height: 38px; 
		width: 38px; 
		float: left; 
		margin-left: 20px; 
		margin-top: 20px; 
		border: 1px solid rgb(0, 0, 0, 0.11); 
		border-radius: 3px; 
	}
	.teamchoose_jabcho_div{
		 font-size: 22px; 
		 font-weight: 600; 
		 margin-top: 20px; 
		 margin-left: 75px;
	}
	.teamchoose_jabcho_domain{
		 color: #999999;
		 margin-top: 7px; 
		 margin-left: 75px; 
		 text-decoration: underline; 
	}
	.teamchoose_manager{
		height: 31px; 
		width: 56px; 
		margin-left: 72px; 
		margin-top: 10px
	}
	.teamchoose_owner_loginEmail{
		color: #999999; 
		margin-left: 135px; 
		margin-top: -25px
	}
	.teamchoose_loginEmail{
		color: #999999; 
		margin-left: 76px; 
		margin-top: 17px
	}
	
	.teamchoose_jointeam{
		float: right;
	    width: 103px;
	    height: 35px;
	    background-color: #5c9df2;
	    color: white;
	    border-radius: 3px;
	    padding-left: 9px;
	    font-weight:500;
	    padding-right: 7px;
	    margin-top: -60px;
	    margin-right: 16px;
	    border: none 
	}
	.teamchoose_teamset{
		float: right; 
		width: 58px; 
		height: 35px; 
		font-size: 15px; 
		font-weight: 700; 
		color: #888888; 
		border: 1px solid rgb(220, 220, 220); 
		border-radius: 3px; 
		line-height: 38px; 
		padding-left: 30px; 
		margin-top: -60px; 
		margin-right: 133px; 
	}
	.teamchoose_kori{
		 width: 780px; 
		 height: 113px; 
		 margin: 130px auto; 
		 border: 1px solid rgb(0, 0, 0, 0.11); 
		 border-radius: 3px; 
		 margin-top: -120px;
	}
	.teamchoose_jandi_img{
		height: 38px; 
		width: 38px; 
		float: left; 
		margin-left: 20px; 
		margin-top: 20px; 
		border: 1px solid rgb(0, 0, 0, 0.11); 
		border-radius: 3px;
	}
	.teamchoose_kori_div{
		font-size: 22px; 
		font-weight: 600; 
		margin-top: 20px; 
		margin-left: 75px;
	}
	.teamchoose_kori96{
		color: #999999; 
		margin-top: 7px; 
		margin-left: 75px; 
		text-decoration: underline; 
	}
	.teamchoose_8163093_2{
		color: #999999; 
		margin-left: 74px; 
		margin-top: 17px; 
		float: left	
	}
	.teamchoose_teamset2{
		float: right;
	    width: 42px;
	    height: 35px;
	    font-weight: 700;
	    font-size: 15px;
	    color: #888888;
	    border: 1px solid rgb(220, 220, 220);
	    border-radius: 3px;
	    line-height: 38px;
	    padding-left: 14px;
	    margin-top: -60px;
	    margin-right: 133px;
	}
	.teamchoose_teamcreate{
		 width: 780px; 
		 height: 113px; 
		 margin: 130px auto; 
		 background-color: rgba(0, 0, 0, 0.05); 
		 border-radius: 3px; 
		 margin-top: -120px; 
	}
	.teamchoose_teamcreate2{
		 color: #999999; 
		 font-weight: 400; 
		 font-size: 18px; 
		 line-height: 110px; 
		 padding-left: 350px;
		     margin-top: 151px;
	}
	.teamchoose_info{
		 color: #999999; 
		 font-size: 14px; 
		 height: 22px;
		 width: 780px; 
		 margin: 130px auto; 
	}
	.toss{
		float: left; 
		margin-top: -100px; 
		margin-left: 20px
	}
	.use{
		float: right; 
		margin-top: -100px; 
		margin-right: 30px
	}
	.personal{
		float: right; 
		margin-top: -100px; 
		margin-right: 115px
	}
	.question{
		float: right; 
		margin-top: -100px; 
		margin-right: 245px
	}
	.create_a{
		text-decoration:none;
		color:black;
	}
</style>
<title>TEAMER</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
	function sendPost(url, params) {				// params -> var dog = {name: "식빵", family: "웰시코기", age: 1, weight: 2.14}; // 자바스크립트 객체
		var form = document.createElement('form');
		form.setAttribute('method', 'post');
		form.setAttribute('action', url);
		document.charset = "utf-8";
		for(var key in params) {
			var hiddenField = document.createElement('input');
			hiddenField.setAttribute('type', 'hidden');
			hiddenField.setAttribute('name', key);
			hiddenField.setAttribute('value', params[key]);
			form.appendChild(hiddenField);
		}
		document.body.appendChild(form);
		form.submit();
	}
	
	$(function() {
		$("input[type='submit']").click(function() {
			var team_domain = $(this).parent().children("input[type='hidden']").eq(0).val();
		});
		$(".teamchoose_jointeam").click(function() {
//			var team_domain = $(this).parent().children("input[type='hidden']").eq(0).val();
			var team_domain = $(this).parent().find(".teamchoose_jabcho_domain").text().trim();  // prop("tagName");
			//alert(team_domain);
			var team_owner = $(this).parent().find(".teamchoose_owner_loginEmail").text().trim();
			//alert(team_owner);
			var team_data = {domain : team_domain, owner : team_owner };
			sendPost("mainpage.jsp", team_data);
		});
	});  
	</script>
</head>
<body>
	<header class="header">
	<h1>
	<a href = "#"><img src="images/teamerlogo.png" class="logo_img bar" alt="JANDI"/></a>
	</h1>
	<span class="btn">
	<i class="fab fa-apple i_pcApp"></i>
	PC 앱 다운로드 </span>
	<div class="wrap">
		<span class="header_text">
		<img src="images/profile.png" class="profile_img"/>
		<%= mem_name %>
	    </span>
		<span class="header_text">한국어</span>
	</div>
	</header>
	<div class="teamchoose_profile">
		<div class="teamchoose_profile2">
			 프로필
		</div>
		<div style="clear: both">
		</div>
		<img src="images/profile.png" width="48px" height="48px" style="float: left; border-radius: 50%"/>
		<div style="float: left">
			<div class="teamchoose_name">
				 <%= mem_name %>
			</div>
			<div style="clear: both">
			</div>
			<div class="teamchoose_email">
				 <%= mem_email %>
			</div>
		</div>
		<div style="float: right; color: #999999">
			<img src="images/pencil.png" class="teamchoose_pencil"/>
			프로필 설정
		</div>
	</div>
	<div class="teamchoose_teamlist">
		 팀 리스트
	</div>
	
	
	<!-- <form action = "mainpage.jsp"> -->
	<% for(teamlistVO team : list) { %>
	<div id="teamchoose_div">
		<img src="images/jandi.png" class="teamchoose_jabcho_img"/>
		<div class="teamchoose_jabcho_div">
			 <%= team.getT_name()%>
		</div>
		<div class="teamchoose_jabcho_domain">
			 <%= team.getT_domain()%>
		</div>
		<div style="clear: both">
		</div>
		<%
			if(listTeamOwner.contains(team.getT_domain())) {
		%>
			<img src="images/jg_manager_logo.png" class="teamchoose_manager"/>
			<div class="teamchoose_owner_loginEmail">
			 	<%= mem_email %>
			</div>
			<!-- <input type = "submit" name = "teamchoice_submit" value = "팀으로 가기"> -->
			<button type="button" class="teamchoose_jointeam">
				 팀으로 가기
			</button>
		<%
			}
		%>
		
		<!-- <button type="button"class="teamchoose_jointeam">
			 팀으로 가기
		</button> -->
		<%
			if(listTeamOwner.contains(team.getT_domain())) {
		%>
		
		<div class="teamchoose_teamset">
			<i class="fa fa-cog " style="margin-left: -20px; padding-right: 4px"></i>
			팀 관리
		</div>
		<% } else { %>
		<div class="teamchoose_loginEmail">
			 <%= mem_email %>
		</div>
		<div class="teamchoose_teamset2">
			 설정
		</div>
		<!-- <input class = "teamchoose_jointeam" type = "submit" name = "teamchoice_submit" value = "팀으로 가기"> -->
		<button type="button" class="teamchoose_jointeam">
			 팀으로 가기
		</button>
		<% } %>
	</div>
	<% } %>
	<!-- </form> -->
	
	
	
	
	<!-- 코리 부분 -->
	<!-- <div class="teamchoose_kori">
		<img src="images/jandi.png" class="teamchoose_jandi_img"/>
		<div class="teamchoose_kori_div">
			 코리
		</div>
		<div class="teamchoose_kori96">
			 kori96.jandi.com
		</div>
		<div style="clear: both">
		</div>
		<div class="teamchoose_8163093_2">
			 8163093@naver.com
		</div>
		<div class="teamchoose_jointeam" style="margin-top: -25px;">
			 팀으로 가기
		</div>
		<div class="teamchoose_teamset2">
			 설정
		</div>
	</div> -->
	
	
		<!-- 팀생성하기 -->
	<div class="teamchoose_teamcreate">
		<div class="teamchoose_teamcreate2" >
			<a href="team_domain_create.jsp" class="create_a"> + 팀 생성하기</a>
		</div>
	</div>
	<div class="teamchoose_info">
		<div class="toss">
			 ⓒ Toss Lab, Inc.
		</div>
		<div class="use">
			 이용 약관
		</div>
		<div class="personal">
			 개인정보처리방침
		</div>
		<div class="question">
			 자주 묻는 질문
		</div>
	</div>
</body>
</html>S