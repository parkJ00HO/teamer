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

    <div style="width: 100%; height: 500px; 
    margin: auto;margin-top: 5em;">
    <img src="images/board.jpg" alt="" style="width: 100%; height: 600px;">
    </div>

    <div style="margin: auto; text-align: center; margin-top: -19em; color: white;">
        <h1 style="font-size: 50;">티머들의 마음의 소리</h1>
        <h2>TEAMER'S NOTICE BOARD </h2>
    </div>

    <div style="clear: both;"></div>

    <br><br><br><br><br><br><br><br><br><br><br><br>
    <div style=" width: 1300px; margin: auto; text-align: center;">
        <h1>THE <span style="color: #1E6FD9;">SOUND</span> OF MIND</h1>
        티머와 함께라면 신속하고 효율적인 작업을 할 수 있습니다. <br>
        그런데, 더 필요하신 점은 없으신가요? <br><br>
        필요하신 점이나 궁금하신 점, 티머에게 하고 싶은 말들을 작성해주세요!
    </div>
    <style>
        .boardA{
            width: 1100px;
            height: 630px;
            margin: auto;
            margin-top: 3em;
            /* background-color: rgb(190, 217, 228); */
			border: solid 1px lightgray;
			border-radius: 20px;
        }
		#board_writer{
			text-align: center;
		}
		#input{
			margin-left: 5em;
			/* margin: auto; */
				
		}
		#input2{
			margin-top: -10em;
			margin-left: 40em;
		}

		#input3{
			/* background-color:greenyellow; */
			margin-left: 5em;
			margin-top: 3em;
		}

		#submit{
			width: fit-content;
			margin: auto;
		}

        
    </style>
    <div class="boardA">
    <div id="board_writer">
        <br>
        <h1 style="font-size: 25px; font-weight: 600;">작성자 정보</h1>
    </div>

	<div id="input">
		<ul style="display: block; float: left;">
			<li style="text-align: left; font-weight:400; font-size: 14px; padding-left: 1px;">이름</li>
			<li><input type="text" id="name" placeholder="이름을 입력해주세요." style="border-radius: 7px;
				border: solid 1px gray; width: 300px; height: 30px;" ></li>
		</ul>
		
		<ul style="display: block; ">
			<li style="text-align: left; font-weight:400; font-size: 14px; padding-left: 1px;">연락처</li>
			<li><input type="text" id="phone" placeholder="예) 010-1234-5678" style="border-radius: 7px;
				border: solid 1px gray; width: 300px; height: 30px;" ></li>
		</ul>
	</div>

	<div id="input2">
		<ul style="display: block;">
			<li style="text-align: left; font-weight:400; font-size: 14px; padding-left: 1px;">이메일</li>
			<li><input type="text" id="email" placeholder="예) teamer@naver.com" style="border-radius: 7px;
				border: solid 1px gray; width: 300px; height: 30px;" ></li>
		</ul>

		<ul style="display: block; ">
			<li style="text-align: left; font-weight:400; font-size: 14px; padding-left: 1px;">회사 또는 단체명</li>
			<li><input type="text" id="com_name" placeholder="회사 또는 단체명 입력" style="border-radius: 7px;
				border: solid 1px gray; width: 300px; height: 30px;" ></li>
		</ul>

	</div>
<div style="clear: both;"></div>
	<div id="input3">

		<ul style="display: block; ">
			<li style="text-align: left; font-weight:400; font-size: 14px; padding-left: 1px;">TITLE</li>
			<li><input type="text" id="title" placeholder="제목을 입력하세요." style="border-radius: 7px;
				border: solid 1px gray; width: 300px; height: 30px;" ></li>
		</ul>

		<ul style="display: block;  ">
			<li style="text-align: left; font-weight:400; font-size: 14px; padding-left: 1px;">마음의 소리</li>
			<li><input type="text" id="content" placeholder="티머에게 하고싶은 말을 적어주세요!" style="border-radius: 7px;
				border: solid 1px gray; width: 860px; height: 130px;" ></li>
		</ul>

	</div>
	<div style="clear: both;"></div>
	<div id="submit">
	<input type="submit" value="티머에게 마음의 소리 보내기"
	style="width: 300px; height: 30px; border-radius: 10px; color: white; background-color:#1E6FD9;
	border: solid 0px ;">
	</div>

    </div>
				<!-- -------------------- -->
				<style>
					table.teamer_board {
				border-collapse: collapse;
				text-align: left;
				line-height: 1.5;
				border-top: 1px solid #ccc;
				border-bottom: 1px solid #ccc;
				/* margin: 20px 10px; */
				margin: auto;
				margin-top: 4em;
				width: 1100px;
				}
				table.teamer_board thead th {
				width: 150px;
				padding: 10px;
				font-weight: bold;
				vertical-align: top;
				color: #fff;
				background: #1E6FD9;
				margin: 20px 10px;
				}
				table.teamer_board tbody th {
				width: 150px;
				padding: 10px;
				}
				table.teamer_board td {
				width: 350px;
				padding: 10px;
				vertical-align: top;
				}
				table.teamer_board .even {
				background: #eef0fd;
				}
				</style>
					<table class="teamer_board">
						<thead>
						<tr>
						<th scope="cols">번호</th>
						<th scope="cols">제목</th>
						<th scope="cols">작성자</th>
						<th scope="cols">작성날짜</th>
						<th scope="cols">회사 & 단체명</th>
						</tr>
						</thead>
						<tbody>
						<tr>
						<th scope="row">001</th>
						<td>티머 너무 좋아요!</td>
						<td>고주몽</td>
						<td>2021-10-12</td>
						<td>(주)티머</td>
						</tr>
						<tr>
						<th scope="row" class="even">002</th>
						<td class="even">실망스럽네요..</td>
						<td class="even">심주영</td>
						<td class="even">2021-11-19</td>
						<td class="even">Kakao Developer</td>
						</tr>
						<tr>
						<th scope="row">003</th>
						<td>우와...</td>
						<td>박주호</td>
						<td>2021-11-21</td>
						<td>NAVER 개발3팀</td>
						</tr>
						<tr>
							<th scope="row" class="even">004</th>
							<td class="even">미쳤어요?</td>
							<td class="even">박소진</td>
							<td class="even">2021-11-24</td>
							<td class="even">(주)우아한 형제들</td>
						</tr>
						<tr>
							<th scope="row">005</th>
							<td>오늘 점심은 서브웨이</td>
							<td>이채은</td>
							<td>2021-11-26</td>
							<td>日本開発会社</td>
						</tr>

						<tr>
							<td colspan="6"><center>
							<a href="#">1</a> &nbsp; 
							<a href="#">2</a> &nbsp;
							<a href="#">3</a> &nbsp;
							<a href="#">4</a> &nbsp;
							<a href="#">next ▶</a>
							</center></td>
						</tr>
						</tbody>
					</table>



    <div style="clear: both;"></div>
<style>
	#bottomB{
		margin: auto;
		padding-top: 1em;
		width: 100%;
		height: 400px;
		/* background-color: rgb(51, 51, 51); */
        background-image:url('images/board.jpg');
        margin-top: 3em;
    }
	#btA{
		margin-top: 5em;
		margin-left: 15em;
		color: white;
		line-height: 2em;
        /* padding-top: -2em; */
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
			<h2>TEAMER</h2> 
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