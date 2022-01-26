<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .tdc_team_name{
            width: 340px;
            height: 45px;
            border-radius: 4px;
            font-size: 1rem;
            border: 1px solid #d2d2d2;
            background-color: #fff;
            border-radius: 3px;
            padding: 0 0.6875rem;
            color: #505050;
        }
        #tdc_domain_com{
           width: 6rem;
		    border-color: #d2d2d2;
		    border-width: 1px 1px 1px 0;
		    border-style: solid;
		    border-radius: 0 4px 4px 0;
		    height: 48px;
		    line-height: 3rem;
		    background: #f1f4f8;
		    color: #728b98;
		    float: left;
        }
        #tdc_exit{
            float: right;
        }
        #tdc_main_section{
            width: 500px;
            height: 500px;
            margin: 120px auto;
            text-align: center;
        }
        .font{
        	font-size:27px;
        	font-weight:400;
        }
        #tdc_header{
            overflow: auto;
        }
        #tdc_t_domain{
            width: 243px;
            float: left;
            height: 48px;
        }
        #tdc_team_domain_div{
            margin-left: 68px;
        }
        #tdc_team_submit{
            width: 270px;
            height: 45px;
            background-color: rgba(204,204,204,.8);
            color: rgba(255,255,255,.8);
            margin-top: 150px;
            border: 0;
            font-weight: 600;
            cursor:pointer;
        }
        .tdc_team_text{
            
            margin-right: 290px;
            margin-bottom: 10px;
            color: #777;
            font-weight: 700;
        }
        #team_name_text{
            margin-right: 312px;
        }
        #tdc_domain_div{
            margin-top: 25px;
        }
        #tdc_name_domain_div{
            margin-top: 150px;
        }
    </style>

</head>
<body>
	 <div id="tdc_header">
        <img src="images/exit_white.png" id="tdc_exit"/>
    </div>
    <div id="tdc_main_section">
        <div>
            <div class="font">팀 생성하기</div>
        </div>
        
        
        <form action="mainpage_teamcreate_action.jsp">
	        <div id="tdc_name_domain_div">
	            <div>
	                <div class="tdc_team_text" id="team_name_text">팀 이름</div>
	                <input type="text" placeholder="팀 이름" name="t_name"class="tdc_team_name"/>
	            </div>
	            <div id="tdc_domain_div">
	                <div class="tdc_team_text">팀 도메인</div>
	                <div id="tdc_team_domain_div">
	                    <input type="text" placeholder="팀 도메인" name="t_domain"class="tdc_team_name" id="tdc_t_domain"/>
	                    <div id="tdc_domain_com">.teamer.com</div>
	                    <div style="clear: both;"></div>
	                </div>
	            </div>
	            <div>
	                <input type="submit" value="팀으로 이동하기" id="tdc_team_submit" />
	            </div>
	        </div>
        </form>
        
        
    </div>
</body>
</html>