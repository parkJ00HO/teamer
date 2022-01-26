<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
        html, body{
                width: 100%;
                margin: 0;
                padding: 0; 
                border: 0;
                font: inherit;
                vertical-align: baseline;
                box-sizing: border-box;
            }
        </style>
</head>
<style>
    .create_account4{
        text-align: center;
        margin : auto;
        margin-top: 5em;
        width: 400px;
        height: 700px;
        /* background-color: lightyellow; */
    }

    #create1{
        /* background-color: #3080e7; */
        margin-top: 3em;
        margin-left: 3em;
        text-align: left;    
    }

</style>


<body>
<%
	String useremail = request.getParameter("user_email");
	String username = request.getParameter("user_name");
%>




<div class="create_account4">
<span style="font-size: 20px;">이제 곧 <span style="color: #3080e7;">티머</span>를 사용하실 수 있습니다.</span>
    <br>
<span style="color: #448ae6;">_______</span>

<div style="clear: both;"></div><br>
<span style="font-weight: 600; color: #3080e7;">HELLO! We are <a href="teamer1.jsp">'TEAMER'</a></span>
<form action= "account4_action.jsp">
	<div id="create1">
		<input type = "hidden" name = "user_email" value = <%=useremail %>>
		
	    팀 이름 <br>
	    <input type="text" placeholder="팀 이름" name = "teamname"style="width: 300px; 
	            color: lightslategray; margin-top: 1em; 
	            border: solid 1px lightgray; border-radius: 9px;">
	    <br><br>
	    팀 도메인 <br>
	    <input type="text" placeholder="팀 도메인" name="teamdomain" style="float: left; margin-top: 1em; width: 150px;
	                        color: lightslategray;  border: solid 1px lightgray; border-radius: 9px;
	                        border-right: transparent; border-top-right-radius: 0px; border-end-end-radius: 0px;">
	    <input type="text" disabled="disabled"  value=".teamer.com" name="teamdomainB" style="width: 150px; 
	             margin-top: 1em; border: solid 1px lightgray; border-radius: 9px;
	            border-left: transparent; border-end-start-radius: 0px;
	                border-top-left-radius: 0px; text-align: right;">
	</div>


<div id="start">
<input type="submit" name="start" id="start" value="티머 시작하기"
style="width: 380px; height: 40px; border-radius: 100px;
background-color: #448ae6 ; border: none; color: white;
font-size: 15px; margin-top: 3em;">
</div>

</div>
</form>


</body>
</html>