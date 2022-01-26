<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "com.teamer.vo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TEAMER</title>
	<link rel="icon" href="/images/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon" />
<style>
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap'); 
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;900&display=swap');
*{
            font-family: 'Noto Sans KR';
        }
a {
    	color: #000;
    	text-decoration: none;
    	
	}
	
	ul {
    	display: flex;
    	flex: 1 0 auto; 
    	list-style-type: disc;
    	margin-block-start: 1em;
    	margin-block-end: 1em;
    	margin-inline-start: 0px;
    	margin-inline-end: 0px;
    	padding-inline-start: 40px;
	}
	
	li{
		width: 100px;
		display: list-item; 
		text-align: -webkit-match-parent;
	}	
	
	li, ul {
    	list-style: none;
    	float: left;
    	line-height: 30px;          
    	vertical-align: middle;     
    	text-align: center;   
	}
	
	html, body{
		width: 100%;
		margin: 0;
		padding: 0; 
		border: 0;
		font: inherit;
		vertical-align: baseline;
		box-sizing: border-box;
	}
	
	#b0{
		margin-right: 0;
		margin-top: 5px;
	}
	
	#b1{
		width: 100%; 
		vertical-align: middle;     
    	text-align: center;   
	}

	.top_header{
		height: 60px;
    	font-size: .82rem;
    	background-color: #fff;
    	position: fixed;
    	z-index: 500;
    	left: 0;
    	right: 0;
    	top: 0;
    	margin: 0;
    	padding: 0;
    	border: 0;
    	font-size: 100%;
    	font: inherit;
    	vertical-align: baseline;
    	-moz-box-sizing: border-box;
    	box-sizing: border-box;
    	display: block;
		
	}
	#b2{
		float: right;
		padding-top: 20px;
    	padding-right: 8px;
    	padding-bottom: 20px;
    	padding-left: 8px;
	}

#b1_1, #b1_2{
		float: left;
	}
	
	#b1_2{
		float: right;
		vertical-align: middle;     
    	text-align: center;   
	}

.top_menu{
		/* padding-top: 0px;
    	padding-right: 64px;
    	padding-bottom: 0px;
    	padding-left: 64px; */
    	margin: 0 auto;
    	max-width: 1248px;
    	padding: 0 20px;
   	 	height: inherit;
    	-ms-align-items: center;
    	-ms-justify-content: flex-start;
    	-webkit-align-items: center;
    	-webkit-justify-content: flex-start;
    	align-items: center;
    	justify-content: flex-start;
    	display: -webkit-flex;
    	display: flex;height: 60px;
    	font-size: .82rem;
    	background-color: #fff;
    	position: fixed;
   	 	z-index: 500;
    	left: 0;
    	right: 0;
    	top: 0;
		}
		
		.login{
		
		width: 500px;
		/* height: 700px; */
		/* margin-top: 10em; */
		padding-top: 7em;
		margin: auto;
		/* margin-left: 45em; */
	}

	#login_email{
		margin-top: 2em;
	}

	#login_password{
		margin-top: 2em;
	}

	#checkbox{
		margin-top: 1em;
	}

	
	#login_button{
		margin-top: 2em;
	}

	#login_2{
		padding-top: 1em;
		text-align: center;
		font-size: 15px;
	}
		

</style>

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
%>

    <header class = "top_header" id = "header">
		<nav class = "top_menu" >
			<div id = "b0" > <a href="teamer1.jsp"><img src = "images/teamer_logo.png" alt = "My Image"/></a> </div>
			<div id = "b1">
				<div id = "b1_1" >
					<ul class = "left_menu" > 
						<li>
							<a href = ""> 티머소개 </a>
						</li>
						<li>
							<a href = "teamer_customers.jsp"> 고객사례 </a>
						</li>
						<li>
							<a href = "teamer_fee.jsp"> 요금안내 </a>
						</li>
						<li>
							<a href = "board.jsp"> Community </a>
						</li>
						<li>
							<a href = "https://blog.naver.com/koreaisit" target="_blank"> 블로그 </a>
						</li>
					</ul>
				</div>
				<div id = "b1_2" style = "margin-top : 1.5em">
					<a href="download.jsp"> 다운로드 </a> &nbsp;&nbsp;&nbsp;&nbsp;
					<a href="teamer_login.jsp"> 로그인</a>
				</div>
			</div>
		</nav>
	</header>

<form action="login_action.jsp">
	<div class="login">
	<h1 style="font-weight:bold;">로그인</h1>
	<div id="login_email">
		<input type="text" name = "useremail" placeholder=" &nbsp; 이메일" style="
			border: 1px solid grey; width: 500px; height: 50px; border-radius: 10px;">
	</div>

	<div id="login_password">
		<input type="password" name = "userpassword" placeholder=" &nbsp; 비밀번호" style="
			border: 1px solid grey; width: 500px; height: 50px;border-radius: 10px">
	</div>

	<div id="checkbox">
		<input type="checkbox" name="remember_email" value="yes" 
		id="ch1"><label for="ch1">이메일 기억하기</label>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="checkbox" name="maintain_login" value="yes"
		id="ch2"><label for="ch2">로그인 상태 유지</label>
		&nbsp;&nbsp;&nbsp;
		
		<div id="find_pw" style="float: right;">
		<a href="#"><span style="font-size: 12px; color: gray; ">비밀번호 찾기</span></a>
		</div>
	</div>

	<div id="login_button">
		<input type="submit" name="login" id="login" value="로그인"
		style="width: 500px; height: 50px; border-radius: 100px;
		background-color: #1E6FD9 ; border: none; color: white;">
	</div>
	
	<div id="login_2">
		<span style="color: grey;"> 티머가 처음이신가요?</span> 
		 <a href="teamer_create_account.jsp"> <span style="text-decoration: underline;;
		 "> 회원가입 </span></a>
	</div>



	</div>
	

</form>

</body>

</body>
</html>