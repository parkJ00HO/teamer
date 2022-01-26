<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TEAMER</title>
<link rel="icon" href="/images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon" />

<style>
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;900&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
	*{
            font-family: 'Noto Sans KR';
        }
	a {
    	color: #000;
    	text-decoration: none;
	}
	
	body{
      overflow-x: hidden;
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
		margin-top: 10px;
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
	#b3{
		width: 100%;
	}
	#b3 img{
		height: inherit; 
		position: relative;
		width: 100%;
		margin: 0 auto;
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
		padding-top: 0px;
    	padding-right: 64px;
    	padding-bottom: 0px;
    	padding-left: 64px;
    	margin: 0 auto;
    	max-width: 100%;
    	padding: 0 250px;
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
	
	.top_banner{
		left: 13vw; 
		position: absolute;
		top: 180px; 
		color: white; 
		/* line-height: 2em; */
	}
	
	.top_banner > h1{
		line-height: 0px; 
		font-size: 59px;
		color: white; 
		font-weight: 700;
	}
	
	.top_banner > h2{
		display: block; 
		margin-top: 20px;
		margin-bottom: 16px; 
		line-height: 72px; 
		font-size: 68px;
		color: #1E6FD9; 
		font-weight: 700;
	}
	
	.top_banner_buttons {
		margin-top: 20px;
		
	}
	
	.top_banner_buttons > a:first-of-type{
		background-color: #5C9DF2; 
		text-align: center;
    	display: inline-block;
    	color: #fff;
    	padding: 10px 53px;
    	line-height: 30px;
    	border-radius: 50px;
    	margin: 0 16px 16px 0;
	}
	
	.top_banner_buttons > a:last-of-type{
		background-color: #94BDF2;
		text-align: center;
    	display: inline-block;
    	color: #fff;
    	padding: 10px 53px;
    	line-height: 30px;
    	border-radius: 50px;
    	margin: 0 16px 16px 0;
}
	.top_banner_login{
		font-size: 12px;
    	color: #fff;
    	margin: 0;
    	padding: 0; 
    	font: inherit;
    	bod-sizing: border-box;
	}
	
	.top_banner_login > a{
		color: #fff;
    	margin-left: 5px;
    	text-decoration: underline;
    	font-weight: 700;
	}
	
	.top_banner_buttons {
		margin: 0;
    	padding: 0;
    	border: 0;
    	font-size: 100%;
    	font: inherit;
    	vertical-align: baseline;
    	-moz-box-sizing: border-box;
    	box-sizing: border-box;
    	height: 50px;
	}
	
	.medium_container1{
	    background-color: rgb(250, 250, 252);
	    padding: 120px 0;
    	text-align: center;
    	color: #333;
	}
	
	.medium_container2{
		padding: 120px 0; 
		height: 926px;
	}
	
	.medium_container3{
		padding: 120px 0;
		color: #333;
		background-color: rgb(250, 250, 252);
	}
	
	.medium_div1, .medium_div2, .medium_div3{
		max-width: 100%; 
		text-align:center;
	}

	.Container1_title, .Container2_title, .Container3_title{
		line-height: 72px;
    	font-size: 40px;
    	padding: 0 24px;
    	color: #333;
    	font-weight: 700;
	}

	.Container1_title > span{
		color: #1E6FD9;
	}
	.Container2_title > span{
		color: #1E6FD9;
	}
	
	.Container3_title > span{
		color: #1E6FD9;
	}
	.Container1_ul {
		width:100%;
		margin: 0 auto;
		position: relative; 
		border: 0; 
		font: inherit; 
		vertical-align: baseline; 
		box-sizing: border-box;
		text-align: center;
		margin-left: 31em;
	}
	
	/* css고친 부분 */
	.Container1_ul > li:nth-child(1){
	    cursor: pointer;
    	display: inline-block;
    	min-width: 156px;
    	margin: 0 16px 20px;
    	padding: 10px 10px;
    	line-height: 30px;
    	font-size: 20px;
    	border-radius: 56px;
    	background-color: grey;
    	color: #fff;
    	box-shadow: 0 5px 11px rgb(30 111 217 / 24%);
    	font-weight: 500;
	}
	.Container1_ul > li:nth-child(2){
	    cursor: pointer;
    	display: inline-block;
    	min-width: 156px;
    	margin: 0 16px 20px;
    	padding: 10px 10px;
    	line-height: 30px;
    	font-size: 20px;
    	border-radius: 56px;
    	background-color: grey;
    	color: #fff;
    	box-shadow: 0 5px 11px rgb(30 111 217 / 24%);
    	font-weight: 500;
	}
	
	.Container1_ul > li:nth-child(3){
	    cursor: pointer;
    	display: inline-block;
    	min-width: 156px;
    	margin: 0 16px 20px;
    	padding: 10px 10px;
    	line-height: 30px;
    	font-size: 20px;
    	border-radius: 56px;
    	background-color: #1E6FD9;
    	color: #fff;
    	box-shadow: 0 5px 11px rgb(30 111 217 / 24%);
    	font-weight: 500;
	}
	
	.Container1_ul > li:nth-child(4){
	    cursor: pointer;
    	display: inline-block;
    	min-width: 156px;
    	margin: 0 16px 20px;
    	padding: 10px 10px;
    	line-height: 30px;
    	font-size: 20px;
    	border-radius: 56px;
    	background-color: grey;
    	color: #fff;
    	box-shadow: 0 5px 11px rgb(30 111 217 / 24%);
    	font-weight: 500;
	}
	
	/* 여기까지 고침 */
	
	.Container1_image, .Container1_description{
		float: left; 
	}
	
	.Container1_description{
		text-align: left; 
	}
	
	.Container1_content{
		height: 500px;
		margin-left: 400px;
	}
	
	.Container3_content{
		margin-left: 350px;
	}
	
	.Container3_ul > li {
		margin: 25px;
		flex: 0 0 318px;
    	width: 205px;
    	max-width: 235px;
    	height: 350px;
   	 	border-radius: 24px;
    	padding: 58px 40px 40px;
    	display: inline-block;
    	box-shadow: 0 14px 24px rgb(0 18 47 / 8%);
    	background-color: #fff;
	}
	/* //////////////////// */
	.left_menu,#sub-menu{
                            margin: 0;
                            padding: 0;
                            list-style-type: none;
                        }
                     

                        .left_menu>li>a{
                            display: block;
                            padding: 8px 16px;
                            text-align: center;
                            font-size: 12px;
                            display: block;

                        }

                        #sub-menu{
                            position: absolute;
                            background-color: white;
							/* width: 150px; */
							
                        }

                        #sub-menu > li{
                            padding: 16px 28px;
                            border-bottom: 1px solid lightgray;
                        }
						#sub-menu > li:nth-child(5){
							border-bottom: 0px solid transparent;
						}

                        #sub-menu > li > a{
                            color: black;
                            text-decoration: none;
							
                            
                        }

                        #sub-menu >ul> li {
                         display: none;
						 background-color: black;
                         
                            
                        }

                        #sub-menu{
                            position: absolute;
                            background-color: transparent;
                            opacity: 0;
                            visibility: hidden;
                        }
                        .left_menu > li:hover #sub-menu{
                            opacity: 1;
                            visibility: visible;
							background-color: white;
                        }
                        
                        	.bottom{
							margin: auto;
							margin-top: -1em;
							background-color: tomato;
							height: 200px;
						}
							#bottomA{
							color: white;
							text-align: center;
							margin-top: -30em;
						
						}

</style>
</head>
<body>
<%
	String login_id = (String)(session.getAttribute("login_id"));
%>

	<header class = "top_header" id = "header">
		<nav class = "top_menu">
			<a href="teamer1.jsp"><div id = "b0"> <img src = "images/teamer_logo.png" alt = "My Image"/> </div></a>
			<div id = "b1">
				<div id = "b1_1">
					<ul class = "left_menu"> 
						<li>
							<a href = "#"> 티머소개 </a>
								<ul id="sub-menu" style="display: block; margin-left:-2em; transition: all 2s;
								border-radius: 20px;">
									<li><a href="function.jsp">기능</a></li>
									<li><a href="security.jsp">보안</a></li>
									<li><a href="introduce.jsp">회사소개</a></li>
									<li><a href="hire.jsp">채용</a></li>
									<li><a href="help.jsp">헬프센터</a></li>
								</ul>
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
					<a href="download.jsp"> 다운로드&nbsp;&nbsp;&nbsp;&nbsp;</a>
					
					<%
						if(login_id == null){
					%>
					<a href="teamer_login.jsp"> 로그인</a>
					
					<%
						}else{
					%>
					<a href="teamer_logout.jsp"> 로그아웃</a>
					
					<%
						}
					%>
					
				</div>
			</div>
		</nav>
	</header>
	<section class = top_banner_container style="margin-top: -5.5em;">
	<div class = "banner_wrapping" id = "b3"> 
		<img src = "images/main_banner.jpg" alt = "banner image" style="width:100%;;"> 
		<div class = "top_banner">
			<h1> 가장 쉬운 협업 공간 </h1>
			<h2> TEAMER </h2> 
			<p style = "font-size: 15px; line-height: 15px; font-weight: 700;"> 단절된 소통, 번거로운 자료 공유, 보안 위협은 이제 그만!</p>
			<p style = "font-size: 15px; font-weight: 700;">티머와 함께라면 신속하고 효율적인 협업을 할 수 있습니다. </p>
			<div class = top_banner_buttons>
				<a href = "board.jsp" style="width: 130px;"> 커뮤니티 </a>
				<a href = "teamer_create_account.jsp" style="width: 130px;"> 회원가입 </a> 
			</div>
			<br>
			<div class = "top_banner_login" style = "font-size:13px;">
				<%
						if(login_id == null){
					%>
					이미 가입하셨나요?
					<a href="teamer_login.jsp"> 로그인</a>
					
					<%
						}else{
					%>
					
					<a href="teamer_logout.jsp"> 로그아웃</a>
					<%
						}
					%>
			</div>                              
 		</div>
	</div>
	</section>
	
	
	<section class = "medium_container1">
		<div class = "medium_div1">
			<h1 class = "Container1_title"> 
			<span>티머 </span>를 선택하는 이유 </h1>
			<p> 협업툴 티머를 사용하면 소통이 빨라지고 업무 생산성이 높아집니다. </p>
			<div class = "Container1_choiceReason">
				<ul class = "Container1_ul" style = "margin-left: 500px;">
					<li> 실시간 협업 </li>
					<li> 멤버 관리 </li>
					<li> 정보 자산화 </li>
					<li> 업무 자동화 </li>
				</ul>
			</div>
			
			<!-- 여기부터 고침 -->
			<!-- 실시간 협업 -->
			<div class = "Container1_content" style ="display:none;">
				<div class = "Container1_image" style = "margin-top: 100px;">
					<img src = "images/image1.png" alt = "My Image"/>
				</div>
				<div class = "Container1_description" style = "margin-left: 50px; margin-top: 200px; font-size: 25px;">
					<span> <img src = "images/checkpoint.png" alt = "My Image"/> </span> <span style = "font-size: 25px;">주제별 대화방 개설로 효율적인 소통</span>
					<p> <img src = "images/checkpoint.png" alt = "My Image"/> 할 일 기능으로 업무 담당자 및 진행사항 확인</p>
					<p> <img src = "images/checkpoint.png" alt = "My Image"/> 화상회의를 활용해 언제 어디서든 대면 미팅/교류</p> 
					<p> <img src = "images/checkpoint.png" alt = "My Image"/> 구성원 지정 호출로 직관적인 메세지 전달</p> 
					<p style = "font-size: 15px; "> <a href = "">실시간 협업 자세히 알아보기  </a> </p> 
				</div>
			</div>
			
			<!-- 멤버 관리 -->
			<div class = "Container1_content" style= "display:none;">
				<div class = "Container1_image" style = "margin-top: 100px;">
					<img src = "images/Container_content2.png" alt = "My Image"/>
				</div>
				<div class = "Container1_description" style = "margin-left: 50px; margin-top: 150px; font-size: 25px;">
					<span> <img src = "images/checkpoint.png" alt = "My Image"/> </span> <span style = "font-size: 25px;">정회원/준회원 정보 접근 권한 구분</span>
					<p> <img src = "images/checkpoint.png" alt = "My Image"/> 퇴사 멤버 관리로 보안 위험 감소</p>
					<p> <img src = "images/checkpoint.png" alt = "My Image"/> 관리자 지정으로 대화방별 참여 멤버 관리</p> 
					<p> <img src = "images/checkpoint.png" alt = "My Image"/> 외부 인원 초대로 손쉬운 실시간 협업</p> 
					<p style = "font-size: 15px; "> <a href = "">멤버 관리 자세히 알아보기  </a> </p> 
				</div>
			</div>
			
			<!-- 정보 자산화 -->
			<div class = "Container1_content">
				<div class = "Container1_image" style = "margin-top: 40px;">
					<img src = "images/Container_content3.png" alt = "My Image"/>
				</div>
				<div class = "Container1_description" style = "margin-left: 50px; margin-top: 150px; font-size: 25px;">
					<span> <img src = "images/checkpoint.png" alt = "My Image"/> </span> <span style = "font-size: 25px;">드라이브에 주요 문서 및 파일 안전하게 보관</span>
					<p> <img src = "images/checkpoint.png" alt = "My Image"/> 스마트 검색 기능으로 3초내 문서 확인</p>
					<p> <img src = "images/checkpoint.png" alt = "My Image"/> 메세지 영구보관으로 쉬운 업무 히스토리 관리</p> 
					<p> <img src = "images/checkpoint.png" alt = "My Image"/> 다운로드 제한, 워터마크로 안전한 파일 관리</p> 
					<p style = "font-size: 15px; "> <a href = "">정보 자산화 자세히 알아보기  </a> </p> 
				</div>
			</div>

			<!-- 업무 자동화  -->
			<div class = "Container1_content" style= "display:none;">
				<div class = "Container1_image" style = "margin-top: 80px; margin-right:50px;">
				<ul>
					<li style = "padding:0px;"><img src = "images/container4_1.png" alt = "My Image"/> </li>
					<li style = "padding-left: 80px;"><img src = "images/container4_2.png" alt = "My Image"/> </li>
					<li style = "padding-left: 80px;"><img src = "images/container4_3.png" alt = "My Image"/> </li>
				</ul>
				<ul>
					<li style = "padding: 0px;" ><img src = "images/container4_4.png" alt = "My Image"/> </li>
					<li style = "padding-left: 80px;"><img src = "images/container4_5.png" alt = "My Image"/> </li>
					<li style = "padding-left: 80px;"><img src = "images/container4_6.png" alt = "My Image"/> </li>
				</ul>
				</div>
				<div class = "Container1_description" style = "margin-left: 70px; margin-top: 150px; font-size: 25px;">
					<span> <img src = "images/checkpoint.png" alt = "My Image"/> </span> <span style = "font-size: 25px;">기존 업무 시스템과 연동하여 실시간 알림 수신</span>
					<p> <img src = "images/checkpoint.png" alt = "My Image"/> 구글 캘린더 연동으로 손쉬운 스케줄 관리</p>
					<p> <img src = "images/checkpoint.png" alt = "My Image"/> GitHub, JIRA와 유기적인 연동</p> 
					<p> <img src = "images/checkpoint.png" alt = "My Image"/> Webhook으로 외부서비스와 자유로운 연동</p> 
					<p style = "font-size: 15px; "> <a href = "">업무 자동화 자세히 알아보기  </a> </p> 
				</div>
			</div>
			
			<!-- 여기까지 고침 -->
			
			
		</div>
	</section>
	
	<section class = "medium_container2">
		<div class = "medium_div2">
			<h1 class = "Container2_title"> 
			취미는 장비빨, 일할 땐 <span>티머빨!</span></h1>
			<iframe width = "1200px" height="600px" src="https://www.youtube.com/embed/eaIwVNMVI6I"> </iframe>
		</div>
	</section>
	
	<section class = "medium_container3">
		<div class = "medium_div3">
			<h1 class = "Container3_title"> 
			강력한 <span>보안</span> 위 풍부한 소통</h1>
			<p> 기업의 정보를 안전하게 관리하면서도 쉽고 빠르게 소통하세요.</p>
			
			
			<div class = "Container3_content">
				<ul class = "Container3_ul">
					<li> 
						<img src= "images/cloud_image.png" >
						<h3 style = "font-size: 25px;"> 신뢰할 수 있는  <br> 클라우드 인프라 </h3>
						<p style = "font-size: 13px;"> 세계 최고 수준의 보안과 <br> 안정적인 인프라를 제공하는<br> AWS기반 운영 </p>
						<P style = "font-size: 13px;"> 모든 메세지와 파일 전송 즉시 <br> 암호화 처리 </P>
					</li>
					<li> 
						<img src= "images/trophy_image.png" >
						<h3 style = "font-size: 25px;"> 국내외 보안 인증  <br> 획득 및 규정 준수 </h3>
						<p style = "font-size: 13px;"> 국제 표준 정보보호 관리체계 <br> ISO 27001 인증 획득 </p>
						<P style = "font-size: 13px;"> 국내 정보보호 관리체계 규정 <br> ISMS-P 준수 </P>
					</li>
					<li> 
						<img src= "images/shield_image.png" >
						<h3 style = "font-size: 25px;"> 빈틈없이 강력한  <br> 보안 기능 </h3>
						<p style = "font-size: 13px;"> 멤버 및 파일 관리 기능으로 <br> 기업정보 외부 유출 위험 방지 </p>
						<P style = "font-size: 13px;"> 지속적인 보안 및 관리 기능 강화 </P>					
					</li>
				</ul>
				<a href="" style = "margin-left:450px; color: grey;"> 티머 보안에 대해 더 알아보기 </a>
			</div>
		</div>
	</section>

<!-- 맨 밑 부분 -->
<div style="clear: both;"></div>


<div class="bottom">
	<img src="images/main_bottom.png" alt="" width="100%" height="600px">
	<div id="bottomA">
		<h1>신촌 NO.1 업무용 협업툴 <span style="color: #1E6FD9;">티머</span></h1>
		<h2 style="font-weight: 400;">서대문구 문화권에 맞는 사용성, 다국어 지원, 24시간내 고객응대
			, 결제 서비스까지 철저한 현지화로 아시아 고객에게 다가가고 있습니다.
		</h2>
		<br>
		<input type="button" value="도입문의" style="width: 200px; height: 45px;
		background-color:#5C9DF2 ; border-radius: 40px; color: white;
		border: solid 0px;"> &nbsp;
		<input type="button" value="회원가입" style="width: 200px; height: 45px;
		background-color: #94BDF2 ; border-radius: 40px; color: white;
		border: solid 0px">
	</div>
</div>


<br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>
<br><br><br><br>
<div style="clear: both;"></div>
<style>
	#bottomB{
		margin: auto;
		padding-top: 1em;
		width: 100%;
		height: 400px;
		/* background-color: rgb(51, 51, 51); */
		background-color: #94BDF2;
		/* background-color: #5C9DF2; */
	}
	#btA{
		margin-top: 5em;
		margin-left: 15em;
		color: white;
		line-height: 2em;
	}

	#btB{
		margin-top: -19em;
		margin-left: 80em;
		line-height: 2em;
		color: white;
	}

	#btC{
		margin-top: -12em;
		margin-left: 90em;
		line-height: 2em;
		color: white;
	}

	#btD{
		margin-top: -10em;
		margin-left: 100em;
		line-height: 2em;
		color: white;
	}
</style>

<div id="bottomB">
	<div id="btA"> 
			<!-- <img src="images/logoA.png" alt=""> <br> -->
			<h2> TEAMER </h2> 
			@1997-2021 Gozoomong Lab,Inc.(주)고주몽 <br>
			서울특별시 선유동2로 23, 301동 1701호<br>
			대표자 : 심주영<br>
			사업자등록번호 : 220-88-342345 <br>
			신판매업신고번호 : 2019-서울신촌-002133 <br>
			<br><br>
			개인정보처리방침 이용약관
	</div>
	
	<div style="clear: both;"></div>
	
	<div id="btB">
		<span style="font-weight: bold;">TEAMER</span> <br>
		기능 <br>
		보안 <br>
		요금안내 <br>
		헬프센터 <br>
		도입문의
	</div>

	<div style="clear: both;"></div>
	
	<div id="btC">
		<span style="font-weight: bold;">다운로드</span> <br>
		Windows <br>
		Mac OS <br>
		iOS <br>
		Android 
	</div>

	<div style="clear: both;"></div>
	
	<div id="btD">
		<span style="font-weight: bold;">Gozoo Lab, Inc.</span> <br>
		회사소개 <br>
		채용 <br>
		티머 블로그 
	</div>


</div>
<!-- 맨 밑 부분 -->
</body>
</html>