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
									<li><a href="#">채용</a></li>
									<li><a href="#">헬프센터</a></li>
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
            width: 100%;
            height: 400px;
            background-image: -moz-linear-gradient(180deg, rgb(168, 230, 255), rgb(175, 173, 255));
            background-image: -webkit-linear-gradient(180deg, rgb(168, 230, 255), rgb(175, 173, 255));
            background-image: linear-gradient(180deg, rgb(168, 230, 255), rgb(175, 173, 255));
        }
        #banner_text{
            font-size: 25px;
            
            text-align: center;
            margin-top: -11em;
        }
    </style>

    <div class="function">
        <div id="function_banner">
            <!-- 그라데이션 부분 -->
        </div>
        <div id="banner_text">
            <h1>모든 <span style="color:#1E6FD9 ;">협업</span>이 이뤄지는 곳</h1>
            <h4>티머 위에서 새로운 협업문화가 자라납니다.</h4>
        </div>    
    </div>
    
            <div style="clear: both;"></div>
         
        <style>
             #functionA{
            width: 500px;
            /* margin: auto; */
            /* background-color: cornflowerblue; */
            margin-top: 15em;
            margin-left: 33em;
        }

            #functionA>ul>li{
                text-align: left;
                width: 400px;
            }
            #functionA>ul>li>ul>li{
                text-align: left;
                width: 350px;
                margin-left: -2em;
                margin-top: -13px;
            }

            /*  */
           

            #f_menu,#f_submenu{
                            margin: 0;
                            padding: 0;
                            list-style-type: none;
                        }
                        
                        #f_menu{
                            padding-top: 2em;
                        }

                        #f_menu>li>a{
                            display: block;
                            /* padding: 1px 1px; */
                            margin-left: 2.5em;
                            /* text-align: center; */
                            font-size: 17px;
                            display: block;

                        }

                        #f_submenu{
                            position: absolute;
                            background-color:transparent;
							margin-left: 2.7em;
							
                        }

                        #f_submenu > li{
                            padding: 16px 28px;
                            border-bottom: 1px solid transparent;
                            padding-left: 60px;
                           
                        }
						#f_submenu > li:nth-child(5){
							border-bottom: 0px solid transparent;
						}

                        

                        #f_submenu >ul> li {
                         display: none;
						 background-color: black;
                         
                         
                         
                        }

                        #f_submenu{
                            position: absolute;
                            background-color: transparent;
                            opacity: 0;
                            visibility: hidden;
                        }
                        
                        #f_menu>li>a:hover{
                            color: royalblue;
                            ;
                        }
                        
                        
                        #f_menu > li:hover #f_submenu {
                            opacity: 1;
                            visibility: visible;
							background-color: rgb(245, 245, 245);
                            border-radius: 20px;
                        }


                        

                      
                      
                        
                        
            /*  */

        </style>
            <div id="functionA">
                <h1 style="margin-left: 1.3em; margin-top: -1em;
                    margin-bottom: -0.1em;">실시간 협업</h1>
                
                <ul id="f_menu" style="display: block;">
                    <li> <a href="#">▶ 주제별 대화방</a>
                        <ul id="f_submenu" >
                            <li style="padding-top: 6em;">조직 구성과 업무 문화에 맞게 주제별 대화방을 개설해 효율적으로 소통할 수 
                                있습니다. 대화방은 상황에 맞게 공개 또는 비공개 설정을 할 수 있고, 게시판
                                 형태의 보드뷰는 관리자가 공지 용도로 이용하기에 용이합니다.</li>
                            <li> 
                                <img src="images/function1.jpg" alt="" style="width: 390px; height: 290px; margin-left: -3em;">
                            </li>
                        </ul>
                    </li>
                    
                </ul>
                <ul id="f_menu" style="display: block;">
                    <li> <a href="#">▶ 할 일 관리</a>
                        <ul id="f_submenu">
                            <li style="padding-top: 6em;">할 일 기능을 통해 업무 담당자를 지정하고 프로젝트를 관리하세요. 나의 할 일 
                                또는 팀의 할 일을 만들어서 협업할 내용을 진척률과 함께 관리할 수 있고, 캘
                                린더 형태로 할 일 정보를 확인할 수도 있습니다.</li>
                                <li> 
                                    <img src="images/function2.jpg" alt="" style="width: 390px; height: 290px; margin-left: -3em;">
                                </li>
                        </ul>
                    </li>
                    
                </ul>
                <ul id="f_menu" style="display: block;">
                    <li> <a href="#">▶ 화상회의</a>
                        <ul id="f_submenu">
                            <li style="padding-top: 6em;">내장된 화상회의 기능이나 Zoom 연동을 통해 언제 어디서든 교류와 소통이 가능합니
                                다. 내장된 화상회의에는 최대 300명까지 동시 접속이 가능하고 64자 화면 분할 레
                                이아웃까지 지원합니다.</li>
                                <li> 
                                    <img src="images/function3.jpg" alt="" style="width: 390px; height: 290px; margin-left: -3em;">
                                </li>
                        </ul>
                    </li>
                    
                </ul>
                <ul id="f_menu" style="display: block;">
                    <li> <a href="#">▶ 문서 미리보기</a>
                        <ul id="f_submenu">
                            <li style="padding-top: 6em;">한글, 워드, 엑셀, 파워포인트, 이미지 등 문서를 PC/모바일 상관없이 간편하게 미리
                                보기 할 수 있습니다. 멤버들과 공유한 파일을 미리보기 하며 바로 피드백을 남길 수 있
                                어 협업속도가 향상됩니다.</li>
                                <li> 
                                    <img src="images/function4.jpg" alt="" style="width: 390px; height: 290px; margin-left: -3em;">
                                </li>
                        </ul>
                    </li>
                    
                </ul>
            </div>

            <div style="clear: both;"></div>

            <style>
                #functionB{
               width: 500px;
               /* margin: auto; */
               /* background-color: cornflowerblue; */
               margin-top: 15em;
               margin-left: 73em;
           }
   
               #functionB>ul>li{
                   text-align: left;
                   width: 400px;
                   
               }
               #functionB>ul>li>ul>li{
                   text-align: left;
                   width: 350px;
                   margin-left: -2em;
                   margin-top: -13px;
               }
   
               /*  */
              
   
               #f_menu2,#f_submenu2{
                               margin: 0;
                               padding: 0;
                               list-style-type: none;
                           }
                           
                           #f_menu2{
                               padding-top: 2em;
                           }
   
                           #f_menu2>li>a{
                               display: block;
                               /* padding: 1px 1px; */
                               margin-left: 2.5em;
                               /* text-align: center; */
                               font-size: 17px;
                               display: block;
   
                           }
   
                           #f_submenu2{
                               position: absolute;
                               background-color:transparent;
                               margin-left: 2.7em;
                               
                           }
   
                           #f_submenu2 > li{
                               padding: 16px 28px;
                               border-bottom: 1px solid transparent;
                               padding-left: 60px;
                              
                           }
                           #f_submenu2 > li:nth-child(5){
                               border-bottom: 0px solid transparent;
                           }
   
                           
   
                           #f_submenu2 >ul> li {
                            display: none;
                            background-color: black;
                            
                            
                            
                           }
   
                           #f_submenu2{
                               position: absolute;
                               background-color: transparent;
                               opacity: 0;
                               visibility: hidden;
                               margin-left: -38em;
                           }
                           
                           #f_menu2>li>a:hover{
                               color: royalblue;
                               ;
                           }
                           
                           
                           #f_menu2 > li:hover #f_submenu2{
                               opacity: 1;
                               visibility: visible;
                               background-color: rgb(245, 245, 245);
                               border-radius: 20px;
                           }
   

                           
               /*  */
   
           </style>


            <div id="functionB" >
                <h1 style="margin-left: 1.3em; margin-top: -1em;
                    margin-bottom: -0.1em;">멤버 관리</h1>
                
                <ul id="f_menu2" style="display: block;">
                    <li> <a href="#">▶ 정회원 / 준회원</a>
                        <ul id="f_submenu2">
                            <li> 
                                <img src="images/function5.jpg" alt="" style="width: 390px; height: 290px; margin-left: -1.3em;">
                            </li>
                            <li style="padding-top: 6em;">구성원을 정회원 혹은 준회원으로 지정해 멤버별 정보 접근 권한을 구분 지을 수 있습니다.
                                 정회원은 공개된 토픽 및 콘텐츠에 접근 가능하며 자신이 작성한 콘텐츠의 소유 권한을 가지는 반면, 준
                                 회원은 초대된 토픽과 공유받은 콘텐츠에만 접근이 가능합니다.</li>
                        </ul>
                    </li>
                    
                </ul>
                <ul id="f_menu2" style="display: block;">
                    <li> <a href="#">▶ 입/퇴사자 관리</a>
                        <ul id="f_submenu2">
                            <li> 
                                <img src="images/function6.jpg" alt="" style="width: 390px; height: 290px; margin-left: -1.3em;">
                            </li>
                            <li style="padding-top: 6em;">관리자 메뉴를 통해 입/퇴사자 관리도 손쉽게 가능합니다. 퇴사한 멤버는 더이상 정보에 접근이
                                 불가하지만 퇴사한 멤버가 작성한 메시지나 파일은 사용자가 직접 삭제하지 않는 이상 티머에 영구적으로
                                  보존됩니다.</li>
                        </ul>
                    </li>
                    
                </ul>
                <ul id="f_menu2" style="display: block;">
                    <li> <a href="#">▶ 조직도</a>
                        <ul id="f_submenu2">
                            <li> 
                                <img src="images/function7.jpg" alt="" style="width: 390px; height: 290px; margin-left: -1.3em;">
                            </li>
                            <li style="padding-top: 6em;">아시아 업무 문화에 딱 맞는 조직도 기능을 통해 빠른 협업이 가능합니다. 1,000명 이상 조직
                                의 경우, API를 통해 조직관리 시스템과 연동이 가능합니다.</li>
                        </ul>
                    </li>
                    
                </ul>
                <ul id="f_menu2" style="display: block;">
                    <li> <a href="#">▶ 사용량 대시보드</a>
                        <ul id="f_submenu2">
                            <li> 
                                <img src="images/function8.jpg" alt="" style="width: 390px; height: 290px; margin-left: -1.3em;">
                            </li>
                            <li style="padding-top: 6em;">멤버들의 티머 사용현황을 대시보드를 통해 확인할 수 있습니다. 팀 전체 사용량뿐 아니라 멤버 
                                개인의 사용량, 대화방과 드라이브의 파일 저장 현황까지 한눈에 확인해 팀의 협업이 잘 되고 있는지 파악
                                할 수 있습니다.</li>
                        </ul>
                    </li>
                    
                </ul>
            </div>
  
    
            <div style="clear: both;"></div>

            <div id="functionA">
                <h1 style="margin-left: 1.3em; margin-top: -1em;
                    margin-bottom: -0.1em;">기업 정보 자산화</h1>
                
                <ul id="f_menu" style="display: block;">
                    <li> <a href="#">▶ 티머 드라이브</a>
                        <ul id="f_submenu">
                            <li style="padding-top: 6em;">자체 제공하는 드라이브에 주요 문서와 파일을 안전하게 보관할 수 있습니다. 
                                드라이브 내에 폴더를 만들어 파일을 체계적으로 관리할 수 있고 드라이브 내 자산화된 자료를 대화방으로
                                 손쉽게 공유가 가능합니다.</li>
                            <li> 
                                <img src="images/function9.jpg" alt="" style="width: 390px; height: 290px; margin-left: -3em;">
                            </li>
                        </ul>
                    </li>
                    
                </ul>
                <ul id="f_menu" style="display: block;">
                    <li> <a href="#">▶ 스마트 검색</a>
                        <ul id="f_submenu">
                            <li style="padding-top: 6em;">쉽고 똑똑한 검색 기능으로 3초 이내에 문서나 대화 내용을 찾을 수 있습니다. 참여한 대화방
                                별, 멤버별, 기간별로 세세한 설정이 가능해 필요한 자료를 쉽고 빠르게 검색해보세요.</li>
                                <li> 
                                    <img src="images/function10.jpg" alt="" style="width: 390px; height: 290px; margin-left: -3em;">
                                </li>
                        </ul>
                    </li>
                    
                </ul>
                <ul id="f_menu" style="display: block;">
                    <li> <a href="#">▶ 메시지 영구보관</a>
                        <ul id="f_submenu">
                            <li style="padding-top: 6em;">티머에서 공유하는 모든 메시지와 파일은 암호화되어 서버에 저장되며, 직접 삭제하지 않는 
                                한 영구적으로 보존됩니다. 영구보존되는 메시지를 통해 업무 히스토리 파악과 인수인계가 쉬워집니다.
                            </li>
                                <li> 
                                    <img src="images/function11.jpg" alt="" style="width: 390px; height: 290px; margin-left: -3em;">
                                </li>
                        </ul>
                    </li>
                    
                </ul>
                <ul id="f_menu" style="display: block;">
                    <li> <a href="#">▶ 파일 및 문서 관리</a>
                        <ul id="f_submenu">
                            <li style="padding-top: 6em;">멤버, 기간별 다운로드 기록을 확인하거나 다운로드 제한이 가능해 안전한 파일 
                                관리를 할 수 있습니다. 또한, 지정해놓은 워터마크로 내부 문서를 안전하게 열람하거나 사내 보안문서를 안전하게 열람할 수도
                                 있습니다.</li>
                                <li> 
                                    <img src="images/function12.jpg" alt="" style="width: 390px; height: 290px; margin-left: -3em;">
                                </li>
                        </ul>
                    </li>
                    
                </ul>
            </div>

            <div style="clear: both;"></div>

            <div id="functionB" >
                <h1 style="margin-left: 1.3em; margin-top: -1em;
                    margin-bottom: -0.1em;">업무 자동화</h1>
                
                <ul id="f_menu2" style="display: block;">
                    <li> <a href="#">▶ 티머 커넥트</a>
                        <ul id="f_submenu2">
                            <li> 
                                <img src="images/function13.jpg" alt="" style="width: 390px; height: 290px; margin-left: -1.3em;">
                            </li>
                            <li style="padding-top: 6em;">업무에 필요한 서비스들의 메시지 알림을 티머로 모아 받으면 업무 커뮤니케이션 툴을 일원화
                                할 수 있습니다. 구글 캘린더와 연동을 통해 일정 관리가 쉬워지고, GitHub, JIRA 등 버전 관리와 이슈
                                 파악이 용이한 외부 서비스들과도 간단히 연계할 수 있습니다.</li>
                        </ul>
                    </li>
                    
                </ul>
                <ul id="f_menu2" style="display: block;">
                    <li> <a href="#">▶ 업무 시스템 연동</a>
                        <ul id="f_submenu2">
                            <li> 
                                <img src="images/function14.jpg" alt="" style="width: 390px; height: 290px; margin-left: -1.3em;">
                            </li>
                            <li style="padding-top: 6em;">기존에 사용하던 업무 시스템을 티머와 연동해 실시간으로 알림을 수신할 수 있습니다. 내부
                                 시스템에 등록된 휴가 정보, 매출 정보, 결재 승인 등 필요한 메시지를 티머에서 실시간으로 받아보세요.</li>
                        </ul>
                    </li>
                    
                </ul>
                <ul id="f_menu2" style="display: block;">
                    <li> <a href="#">▶ Webhook</a>
                        <ul id="f_submenu2">
                            <li> 
                                <img src="images/function15.jpg" alt="" style="width: 390px; height: 290px; margin-left: -1.3em;">
                            </li>
                            <li style="padding-top: 6em;">사내 개발자가 없어도 Webhook 수신 기능으로 외부 서비스와 자유롭게 연동해 메시지를 수신
                                할 수 있습니다. Webhook 발신 기능을 활용하면 외부 웹 서버 개발을 통해 티머 내 메시지를 외부 서버로
                                 전달해 다양하게 활용할 수 있습니다.</li>
                        </ul>
                    </li>
                    
                </ul>
              
            </div>

            <br><br><br><br><br>
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