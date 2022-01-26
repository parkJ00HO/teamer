<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>팀 관리</title>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@200;300;400;500;600;700;800900&display=swap");
        * {
          font-family: "Noto Sans KR";
          margin: 0;
          padding: 0;
        }
        body{
            overflow: hidden;
        }
        a{
            text-decoration: none;
        }
        a:link,a:visited{
            color:rgb(170, 170, 192) ;
        }
        .margin_text2{
                margin: 15px 20px ;
                box-sizing: border-box;
            }
        #tmm_right_div{
            float: right;
            width: 83%;
            height: 93vh;
        }
        #tmm_big_icon{
            float: left;
        }
        #tmm_big_text{
            float: left;
            font-size: 22px;
            font-weight: 500;
            margin-left: 15px;
            margin-top: 5px;
        }
        #big_div_parent{
            margin: 30px 50px;
        }
        #team_invite_title{
            float: left;
            margin-left: 50px;
        }
        #connect_option_text{
            float: left;
            margin-left: 100px;
        }
        .invite_can{
            float: left;
        }
        #tmm_team_invite_text{
            overflow: auto;
            border-bottom: 1px solid black;
            box-sizing: border-box;
            padding-bottom: 5px;
        }
        #tmm_team_invite_text_child{
            margin-top: 10px;
            color: #a1a7a8;
        }
        #tmm_team_invite_input{
            margin-top: 20px;
        }
        .input_box_margin_top{
            margin-top: 5px;
        }
        #tmm_all_memeber_invite{
            margin-left: 70px;
        }
        #tmm_team_invite_text2{
            overflow: auto;
            border-bottom: 1px solid black;
            box-sizing: border-box;
            padding-bottom: 5px;
        }
        #tmm_team_invite_text_child2{
            margin-top: 10px;
            color: #a1a7a8;
        }
        #tmm_team_invite_input2{
            margin-top: 20px;
        }
        
        #tmm_all_memeber_invite2{
            margin-left: 70px;
        }
        #tmm_team_invite_text3{
            overflow: auto;
            border-bottom: 1px solid black;
            box-sizing: border-box;
            padding-bottom: 5px;
        }
        #tmm_team_invite_text_child3{
            margin-top: 10px;
            color: #a1a7a8;
        }
        #tmm_team_invite_input3{
            margin-top: 20px;
        }
        #tmm_all_memeber_invite3{
            margin-left: 70px;
        }
        #team_invite_title2{
            margin-left: 50px;
            float: left;
            margin-top: 40px;
        }
        #conversation_delete{
            float: left;
            margin: 42px 110px;
        }
        #tmm_con_delete_text{
            float: left;
            overflow: auto;
            border-bottom: 1px solid black;
            box-sizing: border-box;
            padding-bottom: 5px;
            width: 81%;
        }
        #tmm_con_delete_img{
            float: right;
            margin-top: -5px;
        }
        #tmm_delete_con_box{
            margin-top: 10px;
            color: #a1a7a8;
        }
        #tmm_domain_change{
            float: left;
            margin: 102px 46px;
        }
        #tmm_team_delete{
            float: left;
            margin: 103px 58px;
        }
        .blue_color_fon{
            color: #5C9DF2;
        }
        #tmm_domain_text{
            border-bottom: 1px black solid;
            overflow: auto;
            padding-bottom: 5px;
            width: 21vw;
        }
        #tmm_domain2{
            margin: 7px 0px;
        }
        
      </style>
</head>
<body>
    <div>

        <div style="height: 7vh; border-bottom: 2px solid #d6dadb ; box-sizing: border-box;">
            <a href="mainpage.jsp"><img src="images/left_arrow.png" style="float: left; margin-top: 8px;"/></a>
            <div style="float:left; width:1034px; margin: 20px auto ; text-align: center;">
                <span style=" display: block; width: 95px;margin: 0 700px;">
                    <span style="font-size: 16px;">코리</span>
                    <span style="color: white; border-radius: 15px; background-color: #5C9DF2;; padding: 0px 10px; ">FREE</span>
                </span>
            </div>
            <img src="images/member_management_exit.png" style="float: right; margin-top: 13px;"/>
        </div> <!--header div 닫는태그-->

        <div>
            <div style="width: 17%; height:93vh;border-right: 2px solid #d6dadb; box-sizing: border-box; float: left; position: absolute;">
                <div style="height: 500px;"> 
                    <a href="member_management.jsp"><div style="height: 50px; width: 100%; ">
                        <img src="images/member_manage_white.png" width="33"
                         style="float: left; margin:  10px;"/>
                        <div style=" float: left; margin-left:18px ;margin-top:17px;">멤버 관리</div>
                    </div></a>
                    <div style="height: 50px; width: 100%; background-color: rgb(247, 247, 247);">
                        <img src="images/team_manage_img.png"   width="33"
                        style="float: left; margin-top: 10px; margin-left: -41px;"/>
                        <div style="float: left;margin-top: 18px; margin-left: 25px; font-weight: 600;">팀 관리</div>
                    </div>
                </div> <!--위쪽-->
                <div style="color: rgb(170, 170, 192); position: relative; bottom: -226px; height: 190px;font-size: 14px;">
                    <div class="margin_text2"><a href="#">자주 묻는 질문</a></div>
                    <div class="margin_text2"><a href="#">개인정보처리방침</a></div>
                    <div class="margin_text2"><a href="#">이용 약관</a></div>
                    <div class="margin_text2">ⓒ Toss Lab, inc</div>
                </div><!--아래쪽-->
            </div>

            <div id="tmm_right_div">
                <div id="big_div_parent">
                    <img src="images/team_manage_big_icon.png" width="35" id="tmm_big_icon"/>
                    <div id="tmm_big_text">팀 관리</div>
                    <div style="clear: both;"></div>
                </div>
                <div>
                    <div id="team_invite_title">
                        <div id="tmm_team_invite_text">팀 초대 권한</div>
                        <div id="tmm_team_invite_text_child">팀에 새로운 멤버를 초대할 수 있는 권한을 설정합니다.<br/>
                        관리자만 초대 가능하도록 변경할 경우 관리자를 제외한<br/> 멤버들은 초대가 불가능하게 되며, 
                        기존 초대 링크 또한<br/> 만료됩니다.</div>
                        <div id="tmm_team_invite_input">
                            <div>
                                <input type="checkbox" class="invite_can input_box_margin_top"/>
                                <div class="invite_can">관리자만 초대 가능</div>
                            </div>
                            <div >
                                <input type="checkbox" class="invite_can input_box_margin_top" id="tmm_all_memeber_invite"/>
                                <div class="invite_can">모든 멤버 초대 가능</div>
                            </div>
                        </div>
                    </div>
                    <div id="connect_option_text">
                        <div id="tmm_team_invite_text2">TEAMER 커넥트 설정 권한</div>
                        <div id="tmm_team_invite_text_child2">팀에 잔디 커넥트 항목을 추가할 수 있는 권한을 설정합니다.<br/>
                            모든 멤버 설정 시, 모든 멤버들이 자유롭게 연동 서비스를<br/> 추가할 수 있습니다.<br/>
                            단, 연동 내역 조회는 관리자만 가능합니다.</div>
                        <div id="tmm_team_invite_input2">
                            <div>
                                <input type="checkbox" class="invite_can input_box_margin_top"/>
                                <div class="invite_can">관리자만</div>
                            </div>
                            <div >
                                <input type="checkbox" class="invite_can input_box_margin_top" id="tmm_all_memeber_invite2"/>
                                <div class="invite_can">모든 멤버</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <div style="clear:both"></div> 
                    <div id="team_invite_title2">
                        
                        <div style="clear: both;"></div>
                        <div id="tmm_team_invite_text3">시간제 표시</div>
                        <div id="tmm_team_invite_text_child3">팀의 메시지, 게시글 등에 표시되는 시간을 설정합니다.<br/>
                            <br/>
                            예시)<br/>
                            12시간제 표시 : 오전 10:30<br/>
                            24시간제 표시 : 22:30</div>
                        <div id="tmm_team_invite_input3">
                            <div>
                                <input type="checkbox" class="invite_can input_box_margin_top"/>
                                <div class="invite_can">관리자만</div>
                            </div>
                            <div >
                                <input type="checkbox" class="invite_can input_box_margin_top" id="tmm_all_memeber_invite3"/>
                                <div class="invite_can">모든 멤버</div>
                            </div>
                        </div>
                    </div>
                    <div id="conversation_delete">
                        <div>
                            <div id="tmm_con_delete_text">1:1대화 삭제 허용</div>
                            <img src="images/off.png" width="80" id="tmm_con_delete_img"/>
                            <div style="clear: both;"></div>
                        </div>
                        <div id="tmm_delete_con_box">
                            이 기능을 ON으로 설정하면 모든 멤버의 1:1 대화 내용 삭제를<br/> 허용합니다.<br/>
                            1:1 대화 삭제 시 본인과 상대방의 대화 내용이 모두 삭제되며<br/> 파일, 투표도 함께 삭제됩니다.
                        </div>
                    </div>
                </div>
                <div style="clear: both;"></div>
                <div>
                    <div id="tmm_domain_change">
                        <div id="tmm_domain_text">팀 도메인 변경</div>
                        <div class="blue_color_fon" id="tmm_domain2">팀 도메인 변경하기</div>
                        <div class="blue_color_fon">팀 이름 변경하기</div>
                    </div>
                    <div id="tmm_team_delete">
                        <div id="tmm_domain_text">팀 삭제</div>
                        <div class="blue_color_fon" id="tmm_domain2">팀 삭제하기</div>
                    </div>
                </div>
            </div>
            
        </div>
    </div><!--젤큰 div 닫는태그-->    
</body>
</html>