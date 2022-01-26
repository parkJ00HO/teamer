<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "javax.mail.*" %>
<%@ page import = "mail.*" %>
<%@ page import = "com.teamer.vo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
                padding-top: 0px;
                padding-right: 64px;
                padding-bottom: 0px;
                padding-left: 64px;
                margin: 0 auto;
                max-width: 1248px;
                padding: 0 24px;
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
        
        </style>
        
        </head>
        <body>
        <%
			String mem_name = request.getParameter("name");
			String mem_email = request.getParameter("email");
			String mem_password = request.getParameter("password");
        
        int ran = (int)((Math.random()*9000)+1000);
        String randomnum = String.valueOf(ran);
        
        String random_mail = mem_email;
        SendMail.send(random_mail,mem_name,randomnum);
        
  
        
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
			
			String sql = "UPDATE MEMBERS SET MEM_NAME = ?, MEM_EMAIL = ?, MEM_PW =?, MEM_RANDOMNUM = ? WHERE MEM_NAME = 'test_name'";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem_name);
			pstmt.setString(2, mem_email);
			pstmt.setString(3, mem_password);
			pstmt.setInt(4, ran);
			pstmt.executeUpdate();
		%>
            <header class = "top_header" id = "header">
                <nav class = "top_menu">
                    <div id = "b0"> <a href="teamer1.jsp"><img src = "images/teamer_logo.png" alt = "My Image"/></a> </div>
                    <div id = "b1">
                        <div id = "b1_1">
                            <ul class = "left_menu"> 
                                <li>
                                    <a href = "introduce.jsp"> 티머소개 </a>
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
                            <a href=""> 로그인</a>
                        </div>
                    </div>
                </nav>
            </header>
        
</head>

<body>


<style>
    .create_account3{
        padding-top: 5em;
        margin: auto;
        margin-top: 10em;
        width: 400px;
        height: 350px;
        /* background-color: skyblue; */
        border: solid 1px lightslategray;
        border-radius: 35px;
    }
    #rannum{
        margin-top: 2em;
    }
    #rannum>ul>li{
        margin-right: -2.2em;
    }
    #rannum>ul>li>input{
        width: 50px;
        height: 60px;
        border: solid 1px lightslategray;
        border-radius: 9px;
        margin: auto;
        margin-left: 1em;
        font-size: 40px;
        background-color: transparent;
        text-align: center;

        
    }
    
</style>
    <div class="create_account3">
        <div style="margin-left: 8.7em; margin-top: -3.5em;">
        <img src="images/email.png" alt="">
        </div>
        <div style="text-align: center; margin-top: 1em;">
            <span style="font-weight: 600; font-size: 20px;"> <%= mem_email %> </span>
        </div>
        <div style="text-align: center; margin-top: 1em;">
            <span style="font-weight: 300; font-size: 12px;">
                인증번호 이메일을 발송했습니다. <br>
                받으신 인증번호를 입력해주세요.
            </span>
        </div>
<form action="mail_action.jsp">
	<input type = "hidden" name = "user_email" value = "<%=mem_email %>">
	<input type = "hidden" name = "mem_name" value = "<%=mem_name %>">
        <div id="rannum">
            <ul>
                <li><input type="text" maxlength='1' name = "ran1"></li> 
                <li><input type="text" maxlength='1' name = "ran2"></li>
                <li><input type="text" maxlength='1' name = "ran3"></li>
                <li><input type="text" maxlength='1' name = "ran4"></li>
            </ul>
        </div>

        <div id="next_button">
            <input type="submit" name="next" id="next" value="인증하기"
            style="width: 400px; height: 50px; border-radius: 100px;
            background-color: #448ae6 ; border: none; color: white;
            font-size: 15px; margin-top: 7em;">
           <!-- test용 다음 선택 -->
           <div style="text-align: center;  ">
           </div>
           <!-- ------------- -->
        </div>

        <div id="retry" style="text-align: center; padding-top: 10px;">
            <span style="color: grey;"> 이메일을 받지 못하셨나요?</span> 
             <a href="teamer_create_account2.jsp"> <span style="text-decoration: underline;;
             "> 다시 시도해주세요. </span></a>
        </div>
</form>



    </div>
    
</body>
</html>