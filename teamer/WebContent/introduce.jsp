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
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');
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
							<a href = "#"> 잔디소개 </a>
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
</head>
<body>

<style>
    #mainB{
        background-color: #1E6FD9;
        margin-top: -23em;
        margin-left: 16em;
        color: white;
        line-height: 2em;
    }

</style>

<div class="main">
    <div id="mainA">
        <img src="images/intro_banner.jpg" alt="" style="width: 100%; height: 800px;">
    </div>

    <div id="mainB">
        <h2>GozooLab, Inc.</h2>
        <h1>우리는 일하는 방식에 있어</h1>
        <h1>새롭고 혁신적인 방법을 제공합니다.</h1>
        서대문구 No. 1 엔터프라이즈 Saas 기업을 향해 나아가는 고주랩의 서비스를 사용하시면 <br>
        업무가 단순해지는 동시에 효율적이고 또 즐거워집니다. <br>
        고주랩이 서비스하는 티머로 일하고 업무가 어떻게 더 즐겁고 간편해질 수 있는지 직접 경험해 보세요.
    </div>

</div>

<div style="clear: both;"></div>
<!-- 단락 분할 -->
<style>
    .history{
        /* background-color: violet; */
        /* margin-top: 10em; */
        margin: auto;
        margin-top: 10em;
        width: 1500px;
        height: 500px;
    }

    #historyA{
        margin-left: 15em;
        line-height: 2em;
    }

    #historyB{
        border: 1px solid gray; 
        width: 2px; height: 490px;
        background-color: gray;
        margin-left: 50em;
        margin-top: -13em;

        z-index: 1;
    }

    #historyB-1{
        margin-left: -3em ;
        margin-top: -3.3em;
        z-index: 2;
    }

    #historyB-1>li{
        font-size: 20px;
        color: #1E6FD9;
        line-height: 6em;
    }

    #historyC{
        margin-left: 50em;
        margin-top: -32em;
        
    }
    #historyC > ul{
        line-height: 2em;
    }
 
</style>

<div class="history">
    
    <div id="historyA">
        <h3>History</h3>
        <h1>협업툴 시장을 선도하는</h1>
        <h1><span style="color:#1E6FD9 ;">티머</span>는</h1>
        <h1>매일 새로운 역사를 씁니다.</h1>
    </div>

    <div id="historyB">
        <div id="historyB-1"> 
        <li>●</li>
        <li>●</li>
        <li>●</li>
        <li>●</li>
        <li>●</li>
        </div>
    </div>

    <div id="historyC">
        <ul style="display: block;">
            <li style="font-weight: 600;">2021년 12월</li>
            <li style="font-size: 11px;">Teamer 개발</li>
            <br>
        </ul>
        <ul style="display: block; line-height: 3em;">
            <li style="font-weight: 600;">2021년 11월</li>
            <li style="font-size: 11px;">Oracle DB구축 완료</li>
            <br>
        </ul> 
        <ul style="display: block; line-height: 2em;">
            <li style="font-weight: 600;">2021년 10월</li>
            <li style="font-size: 11px;">MiniGame 개발 성공</li>
            <br>
        </ul>
        <ul style="display: block; line-height: 3em;">
            <li style="font-weight: 600;">2021년 9월</li>
            <li style="font-size: 11px;">첫 Project Start</li>
            <br>
        </ul>
        <ul style="display: block;">
            <li style="font-weight: 600;">2021년 8월</li>
            <li style="font-size: 11px;">팀으로서의 첫 만남</li>
        </ul>

    </div>




</div>

<div style="clear: both;"></div>

<!-- 단락 구분 -->
<style>
    .member{
        margin: auto;
        margin-top: 10em;
        width: 1500px;
        text-align: center;
        /* background-color: slateblue; */
    }

    #memberA{
        line-height: 2em;
        font-size: 20px;
    }

    #memberB{
        /* background-color: greenyellow; */
        float: left;
    }
    
    #memberC,#memberD,#memberE{
        float: left;
    }

    #memberB>ul>li,#memberC>ul>li,#memberD>ul>li,#memberE>ul>li{
        width: 500px;
    }
    
    #memberB>ul>li>img,#memberC>ul>li>img,#memberD>ul>li>img
    ,#memberE>ul>li>img{border-radius: 20px;}

</style>

<div class="member">
    <div id="memberA">
        <h2><span style="color: gray;">Management</span></h2>
        <h1>고객의 성공 파트너가 되어</h1>
        <h1>서대문구 No.1 협업 소프트웨어로 나아갑니다.</h1>
    </div>
    
    <div id="wholemember" style="margin-left: 12em;">

    <div id="memberB">
        <ul style="display: block;">
            <li><img src="images/shim.jpg" alt="" style="width: 500px; height: 335px;"></li>
            <li style="font-weight: 700; font-size: 20px;">심주영</li>
            <li>사용자들이 잔디를 통해 이전과 차별화된 경험을 하기 원합니다. 
                새로운 커뮤니케이션 방식을 제시함으로써, 효율적인 업무 환경
                을 제공하는 것이 우리의 목표입니다.</li>
        </ul>
    </div>

    <div id="memberC">
        <ul style="display: block;">
            <li><img src="images/chae.jpg" alt="" style="width: 500px; height: 335px;"></li>
            <li style="font-weight: 700; font-size: 20px;">이채은</li>
            <li>새롭고 성공적인 것을 얻기 위해서는 끊임 없는 고민과 도전이 필요합니다. 
                자신의 영역에서 최선의 도전과 좋은 결과를 얻을 수 있도록 함께 돕고, 함
                께 성장하는 것이 보람이라고 생각합니다.</li>
        </ul>
    </div>

    <div id="memberD">
        <ul style="display: block;">
            <li><img src="images/park.jpg" alt="" style="width: 500px; height: 335px;"></li>
            <li style="font-weight: 700; font-size: 20px;">박주호</li>
            <li>성공적인 협업을 위해서는 조직의 사람과 문화가 중요합니다. 서로 간의 존중과
                 원활한 커뮤니케이션을 통해 협업을 유도하는 환경을 제공하고, 결과적으로는 
                 조직의 생산성을 향상시키고자 합니다.</li>
        </ul>
    </div>

    <div id="memberE">
        <ul style="display: block;">
            <li><img src="images/so.jpg" alt="" style="width: 500px; height: 335px;"></li>
            <li style="font-weight: 700; font-size: 20px;">박소진</li>
            <li>벼락이 번개와 천둥을 동반해서 지상으로 내리치는 것을 말하는데요.
                순간적으로 엄청난 전력이 발생하기 때문에 인체에 직접 미치게 되면 치명적이라고 해요.
                비 오는 날 날카로운 쇠붙이 같은 것을 들고 다니면 안 되겠지요?
                큰일 납니다.</li>
        </ul>
    </div>

    </div>
</div>
<div style="clear: both;"></div>
<!-- 단락 구분 -->


<div class="map" style="margin: auto;">
	<div id="map_test" style="margin: auto; text-align: center;">
		<h1>Contact us</h1>
		<h4>서강로 136 아이비타워 2층,3층 마포구 서울특별시 KR
			<br>코리아IT아카데미 신촌지점</h4>
	</div> 
		
		<div id="map" style="width:1000px;height:500px; background-color: aqua;
			margin-top: -10em; margin: auto;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=448b66f56e5cef2c4c6c66f9fe2e0507"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.5539920, 126.935843), // 지도의 중심좌표
        level: 4 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
var mapTypeControl = new kakao.maps.MapTypeControl();

// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.5539920, 126.935843); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>
   

</div>
<div style="clear: both;"></div>

<style>
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





<br><br><br><br><br><br><br>
<br><br><br><br>
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