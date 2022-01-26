<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "com.teamer.vo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		
		String agreement = request.getParameter("all_agree");
		
 		String sql = "INSERT INTO MEMBERS(MEM_AGREEMENT, MEM_NAME, MEM_EMAIL) VALUES (?,'test_name','test_email')";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,agreement);
		
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
                            <a href="download.jsp"> 다운로드 </a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href=""> 로그인</a>
                        </div>
                    </div>
                </nav>
            </header>
        
</head>




<body>

    <style>
         .create_account2{
        width: 500px;
        height: 400px;
        /* background-color: #1E6FD9 ; */
        margin: auto;
        margin-top: 9em;   
    }


    </style>
    <form action="teamer_create_account3.jsp">
    <div class="create_account2">
        <h1>회원가입</h1>

             이름 <br> 
            <div id="create_name">
                <input type="text" name = "name" placeholder="이름 입력" style="
                    border: 1px solid grey; width: 500px; height: 50px; border-radius: 10px;
                    margin-top: 10px;">
            </div>
            <br>
            이메일 <br> 
            <div id="create_email">
                <input type="text" name = "email" placeholder="이메일 입력" style="
                    border: 1px solid grey; width: 500px; height: 50px; border-radius: 10px;
                    margin-top: 10px;">
            </div>
            <br>
            비밀번호 <br> 
           <span style="font-size: 12px;"> 8~20자 영문 대 소문자, 숫자, 특수문자로 입력하세요.</span>
            <div id="create_email">
                <input type="password" name = "password" placeholder="비밀번호 입력" style="
                    border: 1px solid grey; width: 500px; height: 50px; border-radius: 10px;
                    margin-top: 10px;">
            </div>

            <style>
                #next_button{
                    margin-top: 2em;
                }

                #already{
                    margin-top: 10px;
                    text-align: center;
                }
                
            </style>
            
           
    
        <div id="next_button">
            <input type="submit" name="next" id="next" value="다음" 
            style="width: 500px; height: 50px; border-radius: 100px;
            background-color: #448ae6 ; border: none; color: white;
            font-size: 15px;">
           <!-- test용 다음 선택 -->
           <div style="text-align: center;  ">
           <a href="teamer_create_account3.jsp"> <span>다음(test)</span> </a>
           </div>
           <!-- ------------- -->
        </div>

        <div id="already">
            <span style="color: grey;"> 이미 가입하셨나요?</span> 
             <a href="teamer_login.jsp"> <span style="text-decoration: underline;;
             "> 로그인 </span></a>
        </div>


    </div>
</form>
   
</body>
</html>