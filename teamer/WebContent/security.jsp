<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TEAMER</title>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    
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
	
	.Container1_ul > li{
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

</style>
</head>
<body>

    
    <header class = "top_header" id = "header">
		<nav class = "top_menu">
			<div id = "b0"> <a href="teamer1.jsp"><img src = "images/teamer_logo.png" alt = "My Image"/></a> </div>
			<div id = "b1">
				<div id = "b1_1">
					<ul class = "left_menu"> 
						<li>
							<a href = "#"> 티머소개 </a>
								<ul id="sub-menu" style="display: block; margin-left:-2em; 
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
					<a href="teamer_login.jsp"> 로그인</a>
				</div>
			</div>
		</nav>
	</header>

    <div style="clear: both;"></div>
    <style>
        #function_banner{
            background-image: linear-gradient( 135deg, #C2FFD8 10%, #465EFB 100%);
            /* width: 100%; */
            height: 400px;
            /* background-image: -moz-linear-gradient(180deg, rgb(168, 230, 255), rgb(175, 173, 255));
            background-image: -webkit-linear-gradient(180deg, rgb(168, 230, 255), rgb(175, 173, 255));
            background-image: linear-gradient(180deg, rgb(168, 230, 255), rgb(175, 173, 255)); */
        }
        #banner_text{
            font-size: 25px;
            text-align: center;
            margin-top: -10em;
            
            float: left;
            margin-top: -11em;
            margin-left: 24em;
        }

    </style>

    <div class="function">
        <div id="function_banner">
            <!-- 그라데이션 부분 -->
        </div>
    </div>
    <div id="banner_text">
        <h1>티머 위 <span style="color: #1E6FD9 ;">걱정 없는</span> 협업</h1>
        <h5>티머는 기업의 정보 보호를 위해 지속적으로 보안 및 관리 기능을 강화하고 있습니다.</h5>
    </div>    

	<section class = "medium_container3">
		<div class = "medium_div3">
			<h1 class = "Container3_title"> 
			티머의 <span>보안</span> 으로 걱정말고 협업하세요!</h1>
			<p> 지속적인 노력으로 절대적으로 안전한 보안시스템을 제공하고있습니다.</p>
			
			
			<div class = "Container3_content">
				<ul class = "Container3_ul">
					<li> 
						<img src= "images/seq1.png" >
						<h3 style = "font-size: 25px;"> 메시지와 파일은  <br> 안전하게 저장되나요? </h3>
						<p style = "font-size: 13px;"> 티머 서비스와 모든 데이터는 강력한 자격 증명 및 엑세스 관리 
                            Multi-Factor Authentication을 통해 보호합니다. </p>
						
					</li>
					<li> 
						<img src= "images/seq2.png" >
						<h3 style = "font-size: 25px;"> 관리자가 메시지를<br>볼 수 있나요? </h3>
						<p style = "font-size: 13px;"> 아니요, 1:1 대화 및 초대받지 않은 비공개 대화방의 내용은 팀 관리자는
                        물론 저희도 열람 및 검색이 불가합니다.  </p>
						
					</li>
					<li> 
						<img src= "images/seq3.png" >
						<h3 style = "font-size: 25px;"> 계정 비밀번호는   <br> 어떻게 관리되나요? </h3>
						<p style = "font-size: 13px;"> 비밀번호 등 중요한 데이터의 경우 SHA-256 해시암호 알고리즘으로
                            암호화되어 저장됩니다. </p>
									
					</li>
				</ul>
				
			</div>
		</div>
	</section>
    <div style="clear: both;"></div>

    <style>
        #security_banner{
            /* width: 100%; */
            background-color: rgb(85, 103, 147);
        }

        #banner_img{
            width: 100%;
        }
        #security_text{
            text-align: center;
            margin-top: -15em;
            color: white;
        }
    </style>

    <div id="security_banner">
        <div id="banner_img">
        <img src="images/security-banner.png" alt="" style="width: 100%; height: 400px;">
        </div>
    </div>
    <div id="security_text">
        <h1>티머의 모든 메시지와 파일은 전송 즉시 암호화 처리됩니다.</h1>
    </div>

    <div style="clear: both;"></div>
    <style>
        .security_bottom{
            margin: auto;
            text-align: center;
            margin-top: 20em;
        }
    </style>
    <div class="security_bottom">
        <div>
            <h1>국내외 보안 인증 획득 및 규정 준수</h1>
            <p>철저한 보안 규정 준수와 지속적인 보안 인증 획득으로 믿을 수 있는 서비스를 제공합니다.</p>
        </div>
            <br>
        <div style="float: left; margin-left: 42em;">
            <img src="images/security_logo.png" alt="">
        </div>

        <div style="text-align: left; padding-top: 2em; ">
            <h1> &nbsp; ISO/IEC 27001</h1>
            <h4> &nbsp; &nbsp; 국제 표준 정보보호 관리체계 ISO 27001 인증 획득</h4>
        </div>
    </div>

    <div style="clear: both;"></div>
    <style>
        #bottomB{
            margin: auto;
            padding-top: 1em;
            width: 100%;
            height: 400px;
            background-color: rgb(51, 51, 51);
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
    <br><br><br><br>
    <div id="bottomB">
        <div id="btA"> 
                <img src="images/logoA.png" alt=""> <br>
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