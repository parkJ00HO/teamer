<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>멤버 관리</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
      /* @import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap'); */
   *{
                    font-family: 'Noto Sans KR';
                }
                html, body, div, span, applet, object, iframe,
            h1, h2, h3, h4, h5, h6, p, blockquote, pre,
            a, abbr, acronym, address, big, cite, code,
            del, dfn, em, img, ins, kbd, q, s, samp,
            small, strike, strong, sub, sup, tt, var,
            b, u, i, center,
            dl, dt, dd, ol, ul, li,
            fieldset, form, label, legend,
            table, caption, tbody, tfoot, thead, tr, th, td,
            article, aside, canvas, details, embed, 
            figure, figcaption, footer, header, hgroup, 
            menu, nav, output, ruby, section, summary,
            time, mark, audio, video {
                margin: 0;
                padding: 0;
                border: 0;
                font-size: 100%;
                font: inherit;
                vertical-align: baseline;
            }
        
            article, aside, details, figcaption, figure, 
            footer, header, hgroup, menu, nav, section {
                display: block;
            }
            a{
                text-decoration: none;
                
            }
            a:link,a:visited{
                color:rgb(170, 170, 192) ;
            }
            body {
                line-height: 1;
                font-family: 'Noto Sans KR';
                overflow: hidden;
            }
            ol, ul {
                list-style: none;
            }
            blockquote, q {
                quotes: none;
            }
            blockquote:before, blockquote:after,
            q:before, q:after {
                content: '';
                content: none;
            }
            table {
                border-collapse: collapse;
                border-spacing: 0;
            }
            .margin_text2{
                margin: 15px 20px ;
                box-sizing: border-box;
            }
            .p_font{
                color: rgb(238,128,108);
                border-radius: 15px;
                border: 2px solid rgb(238,128,108);
                padding : 0px 10px;
            }
    </style>
</head>
<body>
    <div>

        <div style="height: 7vh; border-bottom: 2px solid #d6dadb ; box-sizing: border-box;">
           <a href="mainpage.jsp"> <img src="images/left_arrow.png" style="float: left; margin-top: 8px;"/></a>
            <div style="float:left; width:1034px; margin: 20px auto ; text-align: center;">
                <span style=" display: block; width: 95px;margin: 0 700px;">
                    <span style="font-size: 16px;">코리</span>
                    <span style="color: white; border-radius: 15px; background-color: #5C9DF2;; padding: 0px 10px; ">FREE</span>
                </span>
            </div>
            <a href="mainpage.jsp"><img src="images/member_management_exit.png" style="float: right; margin-top: 13px;"/></a>
        </div> <!--header div 닫는태그-->

        <div>
            <div style="width: 17%; height:93vh;border-right: 2px solid #d6dadb; box-sizing: border-box; float: left; position: absolute;">
                <div style="height: 500px;"> 
                    <div style="height: 50px; width: 100%; background-color: rgb(247, 247, 247);">
                        <img src="images/member_management_logo.png" style="float: left; margin:  10px;"/>
                        <div style="font-weight: 600;  float: left; margin-left:18px ;margin-top:17px;">멤버 관리</div>
                    </div>
                    <a href="team_management.jsp">
                    <div style="height: 50px; width: 100%;">
                        <img src="images/team_management_logo.png" style="float: left; margin-top: 15px; margin-left: -44px;"/>
                        <div style="float: left;margin-top: 18px; margin-left: 25px;">팀 관리</div>
                    </div>
                    </a>
                </div> <!--위쪽-->
                <div style="color: rgb(170, 170, 192); position: relative; bottom: -226px; height: 190px;font-size: 14px;">
                    <div class="margin_text2"><a href="#">자주 묻는 질문</a></div>
                    <div class="margin_text2"><a href="#">개인정보처리방침</a></div>
                    <div class="margin_text2"><a href="#">이용 약관</a></div>
                    <div class="margin_text2">ⓒ Toss Lab, inc</div>
                </div><!--아래쪽-->
            </div>

            <div style="float: right;width: 83%;height:93vh;">
                <div style="width: 100%;height: 88vh;">
                    <div style="padding: 30px 35px;">    
                        <div>
                            <img src="images/member_mana3.png" style="float: left;"/>
                            <div style=" font-size: 27px; ; float: left; margin: 9px 14px;">멤버 관리</div>
                            <div style="clear: both;"></div>
                        </div>
                        <div style="width: 1180px; margin-top: 50px; margin-left: 5px; border-bottom: 1px solid black; height: 30px;">
                            <span style=" display: block; width: 300px;">
                                <div style="float: left;">참여 중인 멤버 (3)</div>
                                <img src="images/arrow_bottom.png" style="float: left; margin: -8px 10px;"/>
                            </span>
                            <div style="float: right;">
                                <div style="float: left; font-size: 13px;">20 명씩 보기</div>
                                <img src="images/arrow_bottom.png" width="24px" style="float: left; margin-top: -5px; margin-left: 5px;">
                            </div>
                        </div>
                        <div style="margin-top: 15px; width: 1180px;">
                            <div style="float: left; margin-left: 5px; background-color: #f2f4f8; color: #bcbcbc; border: #f2f4f8 1px solid; 
                            width: 100px; height: 30px; font-size: 17px; text-align: center; line-height: 30px; ">멤버 관리</div>
                            <div style="float: right;width: 350px;">
                                <button type="button" style="background-color:white;text-align: left ;float: left;width: 150px; 
                                height: 35px; border: 1px solid #d2d2d2; box-sizing: border-box;">멤버 이름</button>
                                <input type="text" placeholder="검색어를 입력하세요" style="float: left; background-color:#f2f4f8;box-sizing: border-box; 
                                 color: rgb(247, 247, 247); height: 35px; border: #f2f4f8 1px solid; width: 200px;">
                                 <div style="clear: both;"></div>
                            </div>
                        </div>
                        <div style="clear: both;"></div>
                        <div style="width: 1180px; margin-top: 17px; font-size: 14px;">
                            <div style="color: #989898;">
                                <input type="checkbox" style="width: 80px;float: left;"/>
                                <div style="width: 355px; float: left;">멤버</div>
                                <div style="width: 255px; float: left;">부서</div>
                                <div style="width: 278px; float: left;">직책</div>
                                <div style="width: 205px; float: left;">권한</div>
                            </div>
                        </div>
                        <div>
                            <div style="height: 70px; width: 1180px; background-color: rgb(245, 245, 245); margin-top: 45px; ">
                                <div style="clear: both;"></div>
                                <input type="checkbox" style="width: 80px;float: left; margin-top: 25px;"/>
                                <div style="width: 355px; float: left; margin-top: 5px; margin-left: -12px;">
                                    <img src="images/sojin_image.png" style="float: left;"/>
                                    <div style="float: left; margin: 8px 10px;">
                                        <div>박소진</div>
                                        <div style="margin-top: 5px; font-size: 14px; color: #999;">8163093@naver.com</div>
                                    </div>
                                </div>
                                <div style="width: 255px; float: left; line-height: 70px; font-size: 15px;">개발1팀</div>
                                <div style="width: 278px; float: left; line-height: 70px; font-size: 15px;">미녀사원</div>
                                <div style="width: 205px; float: left; line-height: 70px; font-size: 15px;"><span class="p_font">정회원</span></div>
                            </div>
                            <ul style="height: 70px; width: 1180px;  ">
                                <li style="width: 80px;float: left;"></li>
                                <li style="width: 355px; float: left; margin-top: 5px; margin-left: 75px;">
                                    <img src="images/pro_img.png"/ style="float: left;">
                                    <div style="float: left;  margin: 8px 10px;">
                                        <div>박주호</div>
                                        <div style="margin-top: 5px; font-size: 14px; color: #999;">jjuukkuu96@naver.com</div>
                                    </div>
                                </li>
                                <li style="width: 255px; float: left; line-height: 70px; font-size: 15px;">개발1팀</li>
                                <li style="width: 278px; float: left; line-height: 70px; font-size: 15px;">사장</li>
                                <li style="width: 205px; float: left; line-height: 70px; font-size: 15px; "><span style="border: 2px solid #5C9DF2; border-radius: 15px; padding: 0px 10px; color: #5C9DF2;">소유자</span></li>
                            </ul>
                            <div style="height: 70px; width: 1180px; background-color: rgb(245, 245, 245); ">
                                <div style="clear: both;"></div>
                                <input type="checkbox" style="width: 80px;float: left; margin-top: 25px;"/>
                                <div style="width: 355px; float: left; margin-top: 5px; margin-left: -12px;">
                                    <img src="images/lee_chea_pro.png" style="float: left;"/>
                                    <div style="float: left; margin: 8px 10px;">
                                        <div>이채은</div>
                                        <div style="margin-top: 5px; font-size: 14px; color: #999;">jenny6665@naver.com</div>
                                    </div>
                                </div>
                                <div style="width: 255px; float: left; line-height: 70px; font-size: 15px;">개발3팀</div>
                                <div style="width: 278px; float: left; line-height: 70px; font-size: 15px;">&nbsp;</div>
                                <div style="width: 205px; float: left; line-height: 70px; font-size: 15px;"><span class="p_font">정회원</span></div>
                            </div>
                        </div>
                    </div>
                </div>


                <div style="width: 100%;height: 2vh;border-top: 2px solid #d6dadb ; box-sizing: border-box; ">
                    <div style="width: 100%; text-align: center; height: 25px; margin-top: 10px;">
                        <span style=" margin-top: 10px;;color: rgb(228,228,228);">&lt;</span>
                        <span style=" margin-top: 10px;;margin: 0px 20px; color: #5C9DF2;">1</span>
                        <span style=" margin-top: 10px;;color: rgb(228,228,228) ;">&gt;</span>
                    </div>
                </div>
            </div>
        </div>
    </div><!--젤큰 div 닫는태그-->    
</body>
</html>