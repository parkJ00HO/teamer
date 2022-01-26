<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Jandi Connect</title>

    <style>
      @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;900&display=swap");
      @import url("https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap");
      * {
        font-family: "Noto Sans KR";
      }
      html,
      body {
        margin: 0;
        padding: 0;
      }
      body {
	      line-height: 1;
        font-family: 'Noto Sans KR';
        /* overflow: hidden; */
    }
      #header {
        background-color: #1e6fd9;
        /* width: 964.8px; */
        height: 4vh;
        text-align: center;
        font-size: 17px;
        color: white;
        padding-top: 8px;
        overflow: hidden;
      }
      #main_div {
        overflow-y: hidden;
        overflow: hidden;
      }
      .header_bo {
        font-weight: bold;
      }
      #top_connect {
        height: 57px;
        border-bottom: 1px solid rgb(0, 0, 0, 0.11);
      }
      #left_icon {
        float: left;
        margin-top: 3px;
      }
      #left_icon_img {
        width: 42px;
        height: 42px;
      }
      #connect {
        width: 40px;
        height: 40px;
        /* margin-top: 15px;
        margin-left: 48em; */
      }
      #teamer_connect {
        color: #114768;
        font-size: 20px;
        font-weight: 600;
        margin-top: -30px;
        margin-left: 49px;
      }
      #wrap{
        margin: 16px auto; 
        width: 200px;
      }
      #x_icon {
        width: 30px;
        height: 30px;
        float: right;
        margin-top: -40px;
        padding-right: 10px;
      }
      #main {
        height: 1100px;
        background-color: #fafafa;
      }
      #service {
        color: #8c8c8c;
        margin-left: 27.5em;
        /* font-weight: 600; */
        font-size: 16px;
        padding-top: 45px;
      }
      #webhook {
        width: 1021px;
        height: 100px;
        border: 1px solid rgb(0, 0, 0, 0.11);
        margin: auto;
        margin-top: -1px;
      }
      #webhook_icon {
        margin-top: -44px;
        width: 77px;
        margin-left: 42px;
        height: 70px;
      }
      #new {
        width: 57px;
        height: 57px;
      }
      /* --------목록 공통 이미지, 폰트, 버튼------- */
      
      #list_font {
        color: #505050;
        font-size: 16px;
        line-height: 24px;
        font-weight: 700;
        margin-left: 140px;
        margin-top: -68px;
      }
      #list_font2 {
        color: #9c9c9c;
        font-size: 15px;
        line-height: 20px;
        margin-left: 140px;
        margin-top: 7px;
      }
      #list_add {
        width: 145px;
        height: 38px;
        background-color: #5c9df2;
        color: #fff;
        float: right;
        padding-left: 14px;
        border-radius: 3px;
        line-height: 34px;
        margin-top: -43px;
        margin-right: 20px;
      }
      #list {
        width: 1021px;
        height: 100px;
        border: 1px solid rgb(0, 0, 0, 0.11);
        border-top: none;
        margin: auto;
        margin-top: -1px;
      }
      #list_icon {
        margin-top: 19px;
        width: 77px;
        margin-left: 42px;
        height: 70px;
      }
     /* -------------------------------------- */
     #explain{
      color: #8c8c8c;
      font-size: 17px;
      line-height: 20px;
      text-align: center;
      margin-top: 40px;
     }
     #request{
      width: 160px;
      height: 40px;
      font-size: 16px;
      line-height: 36px;
      background-color: #5c9df2;
      color: #fff;
      margin: 30px auto; 
      border-radius: 30px;
      padding-left: 22px;
     }
    </style>
  </head>
  <body>
    <div id="main_div">
      <div id="header">
        ①Window 또는 Mac에 최적화된 티머 애플리케이션을 설치하여 편리하게
        사용하세요. <span class="header_bo"><u>다운로드</u></span>
        <span class="header_bo"><u>&nbsp;다시 물어보지 않기</u></span>
      </div>
      <!--  header부분 div닫는태그 -->
      <div id="top_connect">
        <!-- ---왼 방향키---- -->
        <div id="left_icon">
         <a href="mainpage.jsp"> <img src="images/left_arrow_but.png" id="left_icon_img" /></a>
        </div>
        <!-- ------전기모양 아이콘--- -->
        <div id="wrap">
          <div><img src="images/connect.png" id="connect" /></div>
          <div id="teamer_connect">티머 커넥트</div>
        </div>

        <div style="float: right">
          <img src="images/x3.png" id="x_icon" />
        </div>
      </div>
      <!--다운로드 밑 상단바 닫는 태그 -->

      <!-- ---main body---- -->
      <div id="main">
      <div id="service">연동 가능한 서비스 목록</div>

      <div style="margin-top: 23px">
        <!-- ---webhook--- -->
        <div id="webhook">
          <img src="images/new.png" id="new" />
          <div>
            <img src="images/webhook.png" id="webhook_icon" />
          </div>
          <div id="list_font">Webhook 발신 (Outgoing Webhook)</div>
          <div id="list_font2">
            잔디에서의 메시지를 외부 서비스로 웹훅(Webhook)을 통해 전달할 수
            있습니다.
          </div>
          <a href=""><div id="list_add">연동 항목 추가하기</div></a>
        </div>

        <!-- ---google 캘린더--- -->
        <div id="list">
          <div><img src="images/google.png" id="list_icon" /></div>
          <div id="list_font">Google 캘린더</div>
          <div id="list_font2">
            Google 캘린더에 등록된 일정에 대한 알림을 잔디에서 확인할 수
            있습니다.
          </div>
          <a href=""><div id="list_add">연동 항목 추가하기</div></a>
        </div>

        <!-- --- RSS--- -->
        <div id="list">
          <div><img src="images/rss.png" id="list_icon" /></div>
          <div id="list_font">RSS 구독</div>
          <div id="list_font2">
            RSS 피드를 통해 최신 뉴스 또는 블로그 업데이트를 잔디에서 확인할 수
            있습니다.
          </div>
          <a href=""><div id="list_add">연동 항목 추가하기</div></a>
        </div>

        <!-- --- Trello--- -->
        <div id="list">
          <div><img src="images/trello.png" id="list_icon" /></div>
          <div id="list_font">Trello</div>
          <div id="list_font2">
            Trello 보드의 변동 사항을 잔디에서 확인할 수 있습니다.
          </div>
          <a href=""><div id="list_add">연동 항목 추가하기</div></a>
        </div>

        <!-- --- JIRA--- -->
        <div id="list">
          <div><img src="images/jira.png" id="list_icon" /></div>
          <div id="list_font">JIRA</div>
          <div id="list_font2">
            JIRA 이슈 변동 사항을 잔디에서 확인할 수 있습니다.
          </div>
          <a href=""><div id="list_add">연동 항목 추가하기</div></a>
        </div>

        <!-- --- github--- -->
        <div id="list">
          <div><img src="images/github.png" id="list_icon" /></div>
          <div id="list_font">GitHub</div>
          <div id="list_font2">
            GitHub Repository를 등록하여 변경사항을 잔디에서 확인할 수 있습니다.
          </div>
          <a href=""><div id="list_add">연동 항목 추가하기</div></a>
        </div>

        <!-- --- Bitbucket--- -->
        <div id="list">
          <div><img src="images/bitbucket.png" id="list_icon" /></div>
          <div id="list_font">Bitbucket</div>
          <div id="list_font2">
            연동된 Repository의 변경사항을 잔디에서 확인할 수 있습니다.(Bitbucket Server 는 추후지원 예정)
          </div>
          <a href=""><div id="list_add">연동 항목 추가하기</div></a>
        </div>

        <!-- --- Webhook 수신--- -->
        <div id="list">
          <div><img src="images/webhook.png" id="list_icon" /></div>
          <div id="list_font">Webhook 수신(Incoming Webhook)</div>
          <div id="list_font2">
            웹훅(Webhook)을 지원하는 여러 서비스의 알림을 잔디에서 확인할 수 있습니다.
          </div>
          <a href=""><div id="list_add">연동 항목 추가하기</div></a>
        </div>

        <!-- -------하단 태그------  -->
        <div id="explain">티머 커넥트에 더 추가를 원하시는 서비스가 있으신가요?</div>
        <div id="request">서비스 연동 요청하기</div>
        <!-- --main 닫는 태그---- -->
      </div>
      <!-- ------총 div 태그-------- -->
    </div>
  </body>
</html>