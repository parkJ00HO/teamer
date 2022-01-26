<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TEAMER</title>
<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;900&display=swap');
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
   
   div{
   	display:block;
   }
   
   table {
   	border-collapse: collapse;
   	border-spacing:0;
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
	}
	
	#b1{
		width: 100%; 
		vertical-align: middle;     
    	text-align: center;   
	}
	
	p {
		margin-block-start: 1em;
    	margin-block-end: 1em;
    	margin-inline-start: 0px;
    	margin-inline-end: 0px;
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
                        
                        
	.TopBanner_top{
		background: linear-gradient(180deg,#d1dceb,#5C9DF2);
    	height: 300px;
    	margin-top: 60px;
    	text-align: center;
    	color: #333;
    	position: relative;
	}	
	
	.TopBanner_title{
		font-weight: 700;
    	font-size: 44px;
    	line-height: 64px;
    	margin-bottom: 20px;
	}
	
	.TopBanner_title span{
		color: #1E6FD9;
	}
	
	h1 {
		display: block;
    	font-size: 2em;
    	margin-block-start: 0.67em;
    	margin-block-end: 0.67em;
    	margin-inline-start: 0px;
    	margin-inline-end: 0px;
	}
	
	.Customers_1_cardlists {
	    width: 50%;
	    display: inline-block;
    	vertical-align: top;
    	border-radius: 16px;
    	position: relative;
    	width: 100%;
    	height: 100%;
    	background-color: #fff;
	}
	
	.card1 {
		border-radius: 16px;
    	position: relative;
    	width: 100%;
    	height: 100%;
    	background-color: #fff;
	}
	
	.card1_image{
		border-radius: 16px;
    	width: 560px;
    	height: 200px;
    	font-size: 0;
    	overflow: hidden;
	}
	
	.card1_contentbox_p{
		line-height: 46px;
    	width:560px;
    	padding: 8px 0;
    	height: 40px;
    	font-size: 32px;
    	font-weight: 700;
		overflow: hidden;
    	text-overflow: ellipsis;
    	display: -webkit-box;
    	-webkit-line-clamp: 2;
    	-webkit-box-orient: vertical;
    	word-wrap: break-word;
	}
	
	.card1_contentbox_p2{
		text-align: left;
		width:560px;
		line-height: 30px;
    	height: 60px;
    	margin: 8px 0 16px;
    	font-size: 16px;
    	overflow: hidden;
    	text-overflow: ellipsis;
    	display: -webkit-box;
    	-webkit-line-clamp: 2;
    	-webkit-box-orient: vertical;
    	word-wrap: break-word;
}

	.Customers_2_cardlists {
	    width: 50%;
	    display: inline-block;
    	vertical-align: top;
    	border-radius: 16px;
    	position: relative;
    	width: 100%;
    	height: 100%;
    	background-color: #fff;
	}
	
	.card2 {
		border-radius: 16px;
    	position: relative;
    	width: 100%;
    	height: 100%;
    	background-color: #fff;
	}
	
	.card2_image{
		border-radius: 16px;
    	width: 560px;
    	height: 200px;
    	font-size: 0;
    	overflow: hidden;
	}
	
	.card2_contentbox_p{
		line-height: 46px;
    	width:560px;
    	padding: 8px 0;
    	height: 40px;
    	font-size: 32px;
    	font-weight: 700;
		overflow: hidden;
    	text-overflow: ellipsis;
    	display: -webkit-box;
    	-webkit-line-clamp: 2;
    	-webkit-box-orient: vertical;
    	word-wrap: break-word;
	}
	
	.card2_contentbox_p2{
		text-align: left;
		width:560px;
		line-height: 30px;
    	height: 60px;
    	margin: 8px 0 16px;
    	font-size: 16px;
    	overflow: hidden;
    	text-overflow: ellipsis;
    	display: -webkit-box;
    	-webkit-line-clamp: 2;
    	-webkit-box-orient: vertical;
    	word-wrap: break-word;
}

	ul {
	    margin: 0;
    	padding: 0;
    	border: 0;
    	font-size: 100%;
    	font: inherit;
    	vertical-align: baseline;
    	-moz-box-sizing: border-box;
    	box-sizing: border-box;
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
	
	<div class = "TopBanner">
		<div class = "TopBanner_top">
			<h1 class = "TopBanner_title" style = "padding-top: 108px;">
				고객과 함께 자라는 <span> 티머 </span>
			</h1>
			<p class = "TopBanner_title_p">
				성장하는 30만 팀이 티머 위에서 협업하고 있습니다. 
			</p>
		</div>
			<section class = "Customers_1" style = "padding-left: 302px; margin-left: 3.5em;">
				<h2> 대표 고객사례 </h2>
				<ul class = "Customers_1_cardlists" style = "margin: 0px -24px;">
					<li style = "padding: 24px; float:left;">
							<div class = "card1_image">
								<img src = "images/customer_nexentire.png" alt = "card1_image">
							</div>
							<div class = "card1_contentbox">
								<div class = "card1_logobox">
									<img src = "images/industry-company-logo-nexentire.png" alt = "card1_image">
								</div>
								<p class = "card1_contentbox_p"> 해외 각국의 지점과 원활하게 소통합니다. </p>
								<p class = "card1_contentbox_p2"> 국내외 모든 임직원이 효율적으로 소통하는
								문화가 장착됐습니다. 중국, 체코 등에 소재한 주재원 및 현지인들과 원활하게 소통하고 있습니다. </p>
								<span style = "text-align: left; color: #1E6FD9;">자세히 보기 </span>
							</div>
					</li>
					
					
					<li style = "padding: 24px; float:left; padding-left: 500px;">
						<div class = "card2_image">
								<img src = "images/customer_yanadoo.png" alt = "card2_image">
							</div>
							<div class = "card2_contentbox">
								<div class = "card2_logobox">
									<img src = "images/industry-company-logo-yanadoo.png" alt = "card2_image">
								</div>
								<p class = "card2_contentbox_p"> 티머로 인해 통합 소통이 가능해졌습니다. </p>
								<p class = "card2_contentbox_p2"> 티머로 두 회사의 정보 소통 장벽을 허물었고, 외부 강사들과도 
									기존에 이메일을 사용했을 때 보다 더욱더 빠른 실시간 소통이 가능해졌습니다. </p>
								<span style = "text-align: left;color: #1E6FD9;"> 자세히 보기 </span>
							</div>
					</li>
 				</ul>
			</section>
		<div>
		
		</div>
	</div>

	<div style="clear: both;"></div>

	<style>
		#example{
			/*background-color: #5C9DF2;*/ width: 1200px; height: 500px; margin: auto;
		}

		.card1_contentbox_test{
		text-align: left;
		width:300px;
		line-height: 30px;
    	height: 60px;
    	margin: 8px 0 16px;
    	font-size: 16px;
    	overflow: hidden;
    	text-overflow: ellipsis;
    	display: -webkit-box;
    	-webkit-line-clamp: 2;
    	-webkit-box-orient: vertical;
    	word-wrap: break-word;
}
	</style>

	<div id="example">
		<h2>더 많은 사례들</h2>
		<div>
		<ul>
			<li style="padding-top: 1em; line-height: 1px; text-align: center;">
				<div>
					<img src = "images/industry1.png" 
					alt = "card1_image" style="width: 330px; border-radius: 20px; height: 165px;">
				</div> <br><br><br><br><br>
				<div >
					<div class = "card1_logobox">
						<img src = "images/1-1.png" alt = "card1_image">
					</div>
					<p class = "card1_contentbox_test"> 해외 서비스와 다국어 지원이 되는지 여부를 따져보세요. </p>
					<span style = "text-align: left; color: #1E6FD9;">자세히 보기 </span>
				</div>
			</li>

			<li style="padding-top: 1em; line-height: 1px; 
			margin-left: 20em;">
				<div>
					<img src = "images/industry2.png" 
					alt = "card1_image" style="width: 330px; border-radius: 20px; height: 165px;">
				</div> <br><br><br><br><br>
				<div >
					<div class = "card1_logobox">
						<img src = "images/2-1.png" alt = "card1_image">
					</div>
					<p class = "card1_contentbox_test"> 관리자 대시보드에서 구성원들의 소통 정도를 확인합니다. </p>
					<span style = "text-align: left; color: #1E6FD9;">자세히 보기 </span>
				</div>
			</li>

			<li style="padding-top: 1em; line-height: 1px; 
			margin-left: 20em;">
				<div>
					<img src = "images/industry3.png" 
					alt = "card1_image" style="width: 330px; border-radius: 20px; height: 165px;">
				</div> <br><br><br><br><br>
				<div >
					<div class = "card1_logobox">
						<img src = "images/3-1.png" alt = "card1_image">
					</div>
					<p class = "card1_contentbox_test"> 이메일보다 효율적으로 강사분들과 실시간 소통합니다. </p>
					<span style = "text-align: left; color: #1E6FD9;">자세히 보기 </span>
				</div>
			</li>
		</ul>
	</div>
	<br><br><br>
	<div>
		<ul>
			<li style="padding-top: 1em; line-height: 1px; text-align: center;">
				<div>
					<img src = "images/industry4.png" 
					alt = "card1_image" style="width: 330px; border-radius: 20px;">
				</div> <br><br><br><br><br>
				<div >
					<div class = "card1_logobox">
						<img src = "images/4-1.png" alt = "card1_image">
					</div>
					<p class = "card1_contentbox_test"> 티머로 본사와 가맹점을 유기적으로 연결하고 있습니다. </p>
					<span style = "text-align: left; color: #1E6FD9;">자세히 보기 </span>
				</div>
			</li>

			<li style="padding-top: 1em; line-height: 1px; 
			margin-left: 20em;">
				<div>
					<img src = "images/industry5.png" 
					alt = "card1_image" style="width: 330px; border-radius: 20px;">
				</div> <br><br><br><br><br>
				<div >
					<div class = "card1_logobox">
						<img src = "images/5-1.png" alt = "card1_image">
					</div>
					<p class = "card1_contentbox_test"> 티머로 본사와 가맹점을 유기적으로 연결하고 있습니다. </p>
					<span style = "text-align: left; color: #1E6FD9;">자세히 보기 </span>
				</div>
			</li>

			<li style="padding-top: 1em; line-height: 1px; 
			margin-left: 20em;">
				<div>
					<img src = "images/industry6.png" 
					alt = "card1_image" style="width: 330px; border-radius: 20px;">
				</div> <br><br><br><br><br>
				<div >
					<div class = "card1_logobox">
						<img src = "images/6-1.png" alt = "card1_image">
					</div>
					<p class = "card1_contentbox_test"> 티머로 언제 어디서나 빠르고 즉각적인 협업을 하고 있습니다. </p>
					<span style = "text-align: left; color: #1E6FD9;">자세히 보기 </span>
				</div>
			</li>
		</ul>
	</div>
	<br><br><br>
	<div>
		<ul>
			<li style="padding-top: 1em; line-height: 1px; text-align: center;">
				<div>
					<img src = "images/industry7.png" 
					alt = "card1_image" style="width: 330px; border-radius: 20px;">
				</div> <br><br><br><br><br>
				<div >
					<div class = "card1_logobox">
						<img src = "images/7-1.png" alt = "card1_image">
					</div>
					<p class = "card1_contentbox_test"> 고객을 위해 24시간 소통하는 호텔, 티머로 여러 부서가 정확하게 소통합니다. </p>
					<span style = "text-align: left; color: #1E6FD9;">자세히 보기 </span>
				</div>
			</li>

			<li style="padding-top: 1em; line-height: 1px; 
			margin-left: 20em;">
				<div>
					<img src = "images/industry8.png" 
					alt = "card1_image" style="width: 330px; border-radius: 20px;">
				</div> <br><br><br><br><br>
				<div >
					<div class = "card1_logobox">
						<img src = "images/8-1.png" alt = "card1_image">
					</div>
					<p class = "card1_contentbox_test"> CS이슈부터 결제까지.. 티머에서 모든 정보를 실시간으로 파악합니다. </p>
					<span style = "text-align: left; color: #1E6FD9;">자세히 보기 </span>
				</div>
			</li>

			<li style="padding-top: 1em; line-height: 1px; 
			margin-left: 20em;">
				<div>
					<img src = "images/industry9.png" 
					alt = "card1_image" style="width: 330px; border-radius: 20px;">
				</div> <br><br><br><br><br>
				<div >
					<div class = "card1_logobox">
						<img src = "images/9-1.png" alt = "card1_image">
					</div>
					<p class = "card1_contentbox_test"> 티머 위에서 물리적 제약을 극복하고 글로벌 지사와 협업합니다. </p>
					<span style = "text-align: left; color: #1E6FD9;">자세히 보기 </span>
				</div>
			</li>
		</ul>
	</div>

	</div>

	<div style="clear: both;"></div>
	
<div style="clear: both;"></div>
<style>
	#bottomB{
		margin: auto;
		padding-top: 1px;
		width: 100%;
		height: 400px;
		/* background-color: rgb(51, 51, 51); */
		background-color: #94BDF2;
		/* background-color: #5C9DF2; */
		margin-top: 50em;
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