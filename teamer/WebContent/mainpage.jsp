<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "com.teamer.vo.*" %>
<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import = "java.io.File" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>TEAMER</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script src="./js/mainpage.js" type="text/javascript"></script>
<link rel="icon" href="/images/favicon.ico" type="image/x-icon"/>
<link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon"/>
<link rel="stylesheet" href="./css/mainpage4.css?after4" type="text/css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
						
<script>
var dragged;

	
	function sendPost(url, params) {				// params -> var dog = {name: "식빵", family: "웰시코기", age: 1, weight: 2.14}; // 자바스크립트 객체
		var form = document.createElement('form');
	    form.setAttribute('method', 'get'); 
		form.setAttribute('action', url);
		document.charset = "utf-8";
		for(var key in params) {
			var hiddenField = document.createElement('input');
			hiddenField.setAttribute('type', 'hidden');
			hiddenField.setAttribute('name', key);
			hiddenField.setAttribute('value', params[key]);
			form.appendChild(hiddenField);
		}
		document.body.appendChild(form);
		form.submit();
	}
	
	$(function() {
		$("input[type='submit']").click(function() {
			var team_domain = $(this).parent().children("input[type='hidden']").eq(0).val();
		});
		$(".teamchoose_jointeam").click(function() {
	//		var team_domain = $(this).parent().children("input[type='hidden']").eq(0).val();
			var team_domain = $(this).parent().find(".teamchoose_jabcho_domain").text().trim();  // prop("tagName");
			//alert(team_domain);
			var team_owner = $(this).parent().find(".teamchoose_owner_loginEmail").text().trim();
			//alert(team_owner);
			var team_data = {domain : team_domain, owner : team_owner };
			sendPost("mainpage.jsp", team_data);
		});
		
		$(".teamchange_list1").click(function() {
			var domain = $(this).find(".domain").text().trim();   // .prop("tagName");
		});
	});  
		

<%
	request.setCharacterEncoding("UTF-8");
	String domain = request.getParameter("domain");
	String owner = request.getParameter("owner");
	System.out.println(owner + " ////" + domain);
	String loginEmail  = (String)(session.getAttribute("login_id")); 
	String p_image_change = request.getParameter("p_image_change");
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "topic12";
	String db_pw = "user1234";
	
	
	String t_name = "";
	String t_index = "";
	
	Connection conn = null;
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, db_id, db_pw);
	} catch(Exception e) {   // ClassNotFoundException, SQLException
		e.printStackTrace();
	}
	
	ArrayList<teamlistVO> list2 = new ArrayList<teamlistVO>(); 
	
	String sql = "SELECT T_NAME,T_INDEX FROM TEAMLIST WHERE T_DOMAIN = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, domain);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()){
		t_name = rs.getString("T_NAME");
		t_index = rs.getString("T_INDEX");
	}
	
	sql = "SELECT T_NAME, T_DOMAIN FROM TEAMLIST WHERE T_EMAIL LIKE ?";
	PreparedStatement pstmt2 = conn.prepareStatement(sql);
	pstmt2.setString(1, "%" + loginEmail +"%"); 
	ResultSet rs1=pstmt2.executeQuery(); 
	String t_name2=null;
	String t_domain2=null;
	while(rs1.next()) { 
		t_name2=rs1.getString("t_name"); 
		t_domain2=rs1.getString("t_domain"); 
		list2.add(new teamlistVO(t_name2, t_domain2));
	} 
	
	sql = "SELECT * FROM MEMBERS WHERE MEM_EMAIL = ?";
	PreparedStatement pstmt3 = conn.prepareStatement(sql);
	pstmt3.setString(1,loginEmail);
	ResultSet rs3 = pstmt3.executeQuery();
	String profile_name = null;
	if(rs3.next()){
		profile_name = rs3.getString("MEM_NAME"); 
	}
	
	sql = "SELECT * FROM PROFILE WHERE P_EMAIL = ? AND P_T_INDEX = ?";
	PreparedStatement pstmt4 = conn.prepareStatement(sql);
	pstmt4.setString(1, loginEmail);
	pstmt4.setString(2, t_index);
	ResultSet rs4 = pstmt4.executeQuery(); 
	String p_state = "";
	String p_pronounce = "";
	String p_statemessage = ""; 
	String p_department = null; 
	String p_position = null; 
	String p_email = null; 
	String p_absence = null;
	String p_image = null;
	String p_t_index = null;
	String p_phone = null;
	String p_birth = null;
	if(rs4.next()){
		p_state = rs4.getString("p_state");
		p_pronounce = rs4.getString("p_pronounce");
		p_statemessage = rs4.getString("p_statemessage");
		p_department = rs4.getString("p_department");
		p_position = rs4.getString("p_position");
		p_email = rs4.getString("p_email");
		p_absence = rs4.getString("p_absence");
		p_image = rs4.getString("p_image");
		p_t_index = rs4.getString("p_t_index");
		p_phone = rs4.getString("p_phone");
		p_birth = rs4.getString("p_birth");
	}
	
	ArrayList<profileVO> profileList = new ArrayList<profileVO>(); 
	sql = "SELECT * FROM PROFILE WHERE P_T_INDEX = ?";
	PreparedStatement pstmt5 = conn.prepareStatement(sql);
	pstmt5.setString(1, t_index);

	ResultSet rs5 = pstmt5.executeQuery(); 
	String p_state2 = "";
	String p_pronounce2 = "";
	String p_statemessage2 = ""; 
	String p_department2 = null; 
	String p_position2 = null; 
	String p_email2 = null; 
	String p_absence2 = null;
	String p_image2 = null;
	String p_t_index2 = null;
	String p_phone2 = null;
	String p_birth2 = null;
	while(rs5.next()){
		p_state2 = rs5.getString("p_state");
		p_pronounce2 = rs5.getString("p_pronounce");
		p_statemessage2 = rs5.getString("p_statemessage");
		p_department2 = rs5.getString("p_department");
		p_position2 = rs5.getString("p_position");
		p_email2 = rs5.getString("p_email");
		p_absence2 = rs5.getString("p_absence");
		p_image2 = rs5.getString("p_image");
		p_t_index2 = rs5.getString("p_t_index");
		p_phone2 = rs5.getString("p_phone");
		p_birth2 = rs5.getString("p_birth");
		profileList.add(new profileVO(p_pronounce2,p_state2,p_statemessage2,p_department2,p_position2, p_birth2, 
				p_email2, p_absence2, p_image2, p_t_index2, p_phone2));
	}
	
	ArrayList<profileVO> profileList2 = new ArrayList<profileVO>(); 
	sql = "select m.mem_name, p.p_department, p.p_position,p.p_image, p.p_email from members m, profile p where m.mem_email = p.p_email AND p.p_t_index = ?";
	pstmt5 = conn.prepareStatement(sql);
	pstmt5.setString(1, t_index);

	ResultSet rs6 = pstmt5.executeQuery(); 
	String mem_name = null; 
	String p_department3 = null;
	String p_position3 = null;
	String profile_url = null; 
	String p_email3 = null;
	
	int[] mem_count = new int[100]; 
	int i = 0; 
	while(rs6.next()){
		mem_name = rs6.getString("mem_name");
		p_department3 = rs6.getString("p_department");
		p_position3 = rs6.getString("p_position"); 
		profile_url = rs6.getString("p_image");
		p_email3 = rs6.getString("p_email");
		profileList2.add(new profileVO(mem_name, p_department3, p_position3, profile_url, p_email3));
		
		//부서별로 멤버 수 세는 부분
		String sql_cnt = "select count(*) from profile where p_department = ? and p_t_index = ?";
		PreparedStatement pstmt6 = conn.prepareStatement(sql_cnt);
		pstmt6.setString(1, p_department3);
		pstmt6.setString(2, t_index);
		
		ResultSet rs_cnt = pstmt6.executeQuery();
		while(rs_cnt.next()){
			int count = rs_cnt.getInt("COUNT(*)");
			mem_count[i] = count; 
			i++;
		}
	}
	
	sql = "select p_image from profile where p_email = ? AND p_t_index = ?";
	pstmt5 = conn.prepareStatement(sql);
	pstmt5.setString(1, loginEmail);
	pstmt5.setString(2, t_index);

	ResultSet rs7 = pstmt5.executeQuery(); 
	String p_image_url = null; 
	
	if(rs7.next()){
		p_image_url = rs7.getString("p_image"); 
	}
	/*  */
	
	ArrayList<department_cnt> d_cnt = new ArrayList<department_cnt>(); 
	
	sql = "SELECT P_DEPARTMENT, COUNT(*) p_department_cnt FROM PROFILE WHERE P_T_INDEX = ? GROUP BY P_DEPARTMENT";
	pstmt5 = conn.prepareStatement(sql); 
	pstmt5.setString(1,t_index);
	
	ResultSet rs8 = pstmt5.executeQuery();
	
	String p_department_b = null;
	int p_department_cnt = 0; 
	while(rs8.next()){
		p_department_b = rs8.getString("p_department");
		p_department_cnt = rs8.getInt("p_department_cnt");
		d_cnt.add(new department_cnt(p_department_b, p_department_cnt));
	}
	
	// 토픽클릭시, 토픽 내용을 ArrayList에.
	// ?chatTopicName=토픽2&chatTeamIndex=T63&chatLoginEmail=chae@naver.com&domain=코리.teamer.com&owner=
	ArrayList<messageVO> m_list = new ArrayList<messageVO>();
	String chatTopicName = request.getParameter("chatTopicName");
	String chatTeamIndex = request.getParameter("chatTeamIndex");
	String chatLoginEmail = request.getParameter("chatLoginEmail");
	String styleMiddleFirstPage = "display:block;";
	String styleMiddleChatDiv = "display:none;";
	if(chatTopicName != null && chatTeamIndex != null) {
		styleMiddleFirstPage = "display:none;";
		styleMiddleChatDiv = "display:block;";
	}
	sql = "select t_id from topic where t_name = ? and t_t_index = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, chatTopicName);
	pstmt.setString(2, chatTeamIndex);
	rs = pstmt.executeQuery();
	String topic_id = "";
	if(rs.next()){
		topic_id = rs.getString(1);
	}
	
	
	//메세지 불러오는 부분
	//sql = "select * from message where m_t_id = ? order by m_id asc";
	sql = "select * from message where m_t_id = ? order by m_date asc, m_time asc";
	pstmt2 = conn.prepareStatement(sql);
	pstmt2.setString(1, topic_id); 
	System.out.println(topic_id);
	String m_content = "";
	String m_w_email = "";
	String m_date = "";
	String m_time = "";
	int m_notify;
	String m_id = "";
	int m_mentionkey;
	String m_filekey = "";
	String m_t_id = "";
	rs1 = pstmt2.executeQuery();
	while(rs1.next()){
		m_content = rs1.getString("m_content");			// 내용
		m_w_email = rs1.getString("m_w_email");			// 작성자 email
		m_date = rs1.getString("m_date");
		m_time = rs1.getString("m_time");
		m_notify = rs1.getInt("m_notify");				// 공지 등록이면 1, 아니면 0
		m_id = rs1.getString("m_id");					// 메시지ID (시퀀스 사용)
		m_mentionkey = rs1.getInt("m_mentionkey");		// 멘션이면 1, 아니면 0
		m_filekey = rs1.getString("m_filekey");			// 파일이면 1, 아니면 0
		m_t_id = rs1.getString("m_t_id");				// 토픽ID (ex. TO141) -- 토픽테이블의 PK.
		m_list.add(new messageVO(m_content,m_w_email,m_date,m_time,m_notify,m_id,m_mentionkey,m_filekey,m_t_id));
	}
	//loginEmail(나) vs m_w_email(작성자) ---> 둘이 같으면 '초록색', 다르면 '회색'. 
	for(messageVO vo : m_list) {
		System.out.println(vo);
	}
%>
	<%-- alert("<%=domain%> / <%=owner%>"); --%>
      // jQuery부분
        $(function() {
            $("#middle_div").on("click", function() {
                //getHide2("searchA");
                for(var i = 0; i < arrRightPanelTagNames.length; i++) {
                    getHide2(arrRightPanelTagNames[i]);
                }
            });
            $("#middle_chat_div").on("click", function(e) {
                //getHide2("searchA");
                var state = $("#invite_mem").css('display');
                var state2 = $("#seemore").css('display');
                for(var i = 0; i < arrRightPanelTagNames.length; i++) {
                    getHide2(arrRightPanelTagNames[i]);
                }
                if(state=='block') {
                    e.stopPropagation();    // 이벤트 전파를 막아!
                    e.preventDefault();     // a 태그 등 태그 본래의 기능 실행도 막아!
                }
                if(state2 =='block'){
                    e.stopPropagation();    // 이벤트 전파를 막아!
                    e.preventDefault();     // a 태그 등 태그 본래의 기능 실행도 막아!
                }
            });
            $(".close_btn").on("click", function() {
                var tagName = $(this).parent().parent().parent().attr("id");  //prop("tagName");
                //alert(tagName);
                getHide2(tagName);
            })
            $(".close_btn2").on("click",function(){
                var tagName2 = $(this).parent().parent().attr("id") //prop("tagName");
                // alert(tagName2);
                getHide2(tagName2);
            })
            $(".close_btn3").on("click",function(){
              var tagName3 = $(this).parent().parent().parent().attr("id");
              // alert(tagName3);
              getHide2(tagName3);
            })
            $(".close_btn4").on("click",function(){
              var tagName4 = $(this).parent().parent().parent().parent().attr("id");
              // alert(tagName4);
              getHide2(tagName4);
            });
            $("#seemore").on("click", function(e) {
              e.stopPropagation();
            });
            $("#invite_mem").on("click", function(e) {
              e.stopPropagation();
            });
            $("#changeTopic").on("click", function(e) {
              e.stopPropagation();
            });
            $("#teamchange").on("click", function(e) {
              e.stopPropagation();
            });
            $("#createTopic").on("click", function(e) {
              e.stopPropagation();
            });
            $("#offline_off").on("click", function(e) {
              e.stopPropagation();
            });
            $("#offline_on").on("click", function(e) {
              e.stopPropagation();
            });
            $("#topic_search").on("click", function(e) {
              e.stopPropagation();
            });
            $("#chatstart").on("click", function(e) {
              e.stopPropagation();
            });
            $("#rightmenu").on("click", function(e) {
              e.stopPropagation();
            });
            $("#searchA").on("click", function(e) {
              e.stopPropagation();
            });
            $("#file_main").on("click", function(e) {
              e.stopPropagation();
            });
            $("#vote").on("click", function(e) {
              e.stopPropagation();
            });
            $("#orga").on("click", function(e) {
              e.stopPropagation();
            });
            $("#drive").on("click", function(e) {
              e.stopPropagation();
            });
            $("#connect").on("click", function(e) {
              e.stopPropagation();
            });
            $("#bookmark_main_div").on("click", function(e) {
              e.stopPropagation();
            });
            $("#mention_main_div").on("click", function(e) {
              e.stopPropagation();
            });
            $("#myDIV").on("click", function(e) {
              e.stopPropagation();
            });
            $("#folder_delete").on("click", function(e) {
              e.stopPropagation();
            });
            $("#invite_newmember").on("click", function(e) {
              e.stopPropagation();
            });
            $("#invite_member_mail").on("click", function(e) {
              e.stopPropagation();
            });
            $("#profile_pic_change").on("click", function(e) {
              e.stopPropagation();
            });
			$("#topic_delete").on("click", function(e) {
              e.stopPropagation();
            });
			$("#topic_exit").on("click", function(e) {
              e.stopPropagation();
            });
			$("#todo").on("click", function(e) {
              e.stopPropagation();
            });
			<!--채팅 선택 후 데이터베이스에 추가되는 에이잭스 코드 주호 -->
			$(".chatstart_frameR > #chatstart_fontF").click(function(){        // #chatstart_fontF : 대화 시작하기 버튼.
	            
	            // 배열을 선언.
	            var arr_chat = new Array();
	            var chat;
	            //각각의 select box의 정보를 담아 줌
	             $(".cc_select_box > div").each(function(index, item) { 
	               //심주영, 이채은
	               /* if($(".cc_selectbox > div").hide() == true){
	                  continue;
	               } */
	               var name = $(this).html().substring(0, $(this).html().length-1);
	               var email = $(this).attr("email");
	               //alert(index + "///" + name + "///" + email);
	               // 배열에 넣고.   
	               /* arrname = arrname.push(name); */
	               chat={"name":name,"email":email};
	               arr_chat.push(chat); /*arrchat에 chat을 넣어줌*/
	               
	               /* console.log(arr_chat[0].name); */
	             }); 
	            
	               var chat_name=new Array();
	               var chat_email=new Array();
	               for(var i=0;i<arr_chat.length;i++){
	                  chat_name[i]=arr_chat[i].name; 
	                  chat_email[i]=arr_chat[i].email;
	               }
	               
	               
	              var t_id_park = $(".t_id_park").val();
	             /*  alert("현재 팀 인데스 : " + t_id_park); */
	            
	               
	            // data에 위의 배열을 보내. 서버에게.
	            $.ajax({
	               type:"post",
	               url : "chatSV",
	               traditional : true,
	               data : {"chat_name":chat_name,"chat_email":chat_email,"t_id_park":t_id_park},
	               datatype : "json",
	               success: function(data){
	               
	                  str = data;
	                  if(str=="update"){
	                     alert("채팅방이 생성되었습니다");
	                  }else{
	                     alert("이미 채팅방이 있습니다");
	                  }
	                  location.reload(); 
	               },
	               error:function(request,staus,error){
	                  alert("에러")
	               }
	            });
	         }); /*채팅 생성하기 a잭스 끝나는코드  */   
			
			<!--채팅 선택 후 데이터베이스에 추가되는 에이잭스 코드 주호 끝-->
	         
	         <!-- 파추호 -->
	         <!-- 폴더삭제  -->
	         var delete_folder_name;      
	         $(document).on('click', '#lu_folder_imgbut', function () {
	            var delete_folder_name = $(this).parent().siblings(".left_up5_div1").text().trim();
	    		var t_domain = $(".t_domain").val();
	    		var t_owner = $(".t_owner").val();
	            
	            $('.fdD').on('click',function(){
	            
	            $.ajax({
	               type:"get",
	               url : "folder_delete",
	               data : {"folder_name":delete_folder_name},
	               datatype : "json",
	               success: function(data){
	                  alert("폴더가 삭제 되었습니다");
	                  location.href = "mainpage.jsp?domain="+t_domain+"&owner="+t_owner; <!--파추호 -->
	               },
	               error:function(request,staus,error){
	                  alert("오류입니다");
	               }
	            });
	            
	            
	         });  
	      });//폴더삭제 끝나는부분
	         
	      $(".fdC").on("click",function(){
				var t_domain = $(".t_domain").val();
		    	var t_owner = $(".t_owner").val();
	 		location.href = "mainpage.jsp?domain="+t_domain+"&owner="+t_owner;
	       });
	      
	         <!-- 폴더삭제 끝 -->
			<!-- 폴더 이름 수정 파추호-->

			 $(document).on("click", ".a_folder_change_name", function() {
				 	/* pjh */
				 /* alert("클릭됨"); */
		         f_index = $(this).parent().parent().parent().attr("f_index");
		         f_name = $.trim($("#left_up5"+f_index + " > .left_up5_div1").text());
		         $("#left_up5"+f_index + " > .left_up5_div1").html("<input type='text' value='"+f_name+"' class='update_input_folder_name'/>");
		      		console.log(f_name);
		      		console.log(f_index);
		      }); 
			
			$(document).on("keyup", ".update_input_folder_name", function(e) {
		         //alert("!! e.keyCode : " + e.keyCode);
		         if(e.keyCode==13) {
		            f_index = $(this).parent().parent().attr("id").substring(8);
		            //alert("f_index : " + f_index + "을" );
		            f_new_name = $(this).val();
		            //alert(f_new_name + '으로 변경!');
		            
				var t_domain = $(".t_domain").val();
	    		var t_owner = $(".t_owner").val();
		            $.ajax({
		               type:"post",
		               url : "folder_name_change",
		               data : {"folder_name":f_new_name,"folder_index":f_index},
		               datatype : "json",
		               success: function(data){
		                  
		                  $("#left_up5"+f_index + " > .left_up5_div1").html(f_new_name);
		                  location.href = "mainpage.jsp?domain="+t_domain+"&owner="+t_owner;
		               },
		               error:function(request,staus,error){
		                  alert("오류입니다");
		               }
		            });
		            
		            
		            
		            
		            // 이하 success함수:
		         }
		      })		
			<!-- 폴더 이름 수정 끝 파추호-->
			$(".message-input-submit").on("click", function() {
				msg = $("#message_input").text();
				writer = $(this).attr("writer");
				topic_id = $(this).attr("topic_id");
				//alert("서버에 전송 : " + writer + "가" + topic_id + "토픽에서 " + msg + "라 말함.");
				
				msg.replace("//.$/","");  // 안전빵 by YG
				send_message(writer + "//.$/" + topic_id + "//.$/" + msg);
			});
			
			
			// dragged start ★★★★★★
			/* ----------------------dropzone---------------------- */
			
			
			//drag --> 드래그 중 
			 $(".draggable").on("dragstart", function(e) {
				 //드래그 시작 
				 dragged = e.target;
				 e.target.style.background="#e3eeff";
			 });
			 $(".draggable").on("dragend", function(e) {
				 //드래그 종료 
				 e.target.style.background = "";
			 });
			 $(".dropzone").on("dragover", function(e) {    
				 //드래그 요소가 드롭 영역에 있다
				 e.preventDefault();                  
			 });
			 $(".dropzone").on("dragenter", function(e) {
				 //드래그 요소가 드롭영역에 들어감 
					/* e.target.style.background = "#f2fbff"; */
			 });
			 $(".dropzone").on("dragleave", function(e) {
				 //드래그 요소가 드롭영역에 벗어남 
			 });

			 $(".dropzone").on("drop", function(e) {
				 //드롭 
			     //topicName
			    topic_name_to_move = dragged.innerText;
			    if(e.target.className.indexOf(" placeholder")>=0) {
			    	class_name = e.target.className;
			    	class_name = class_name.replace(" placeholder", "");
			    	e.target.className = class_name;
			    	e.target.innerHTML = "";
			    }
			    
				if(e.target.className.indexOf("dropzone")>=0) {
			      e.preventDefault();
			      //topic을 해당 folderdropzone으로 옮겼을때 해당 폴더 이름
			      folder_name_arrived = e.target.previousElementSibling.innerText;
				  
			      // move dragged elem to the selected drop target
			      dragged.parentNode.removeChild( dragged );
			      event.target.appendChild( dragged );
			      
			      /* ---------------------폴더 토픽 ajax-------------------------- */
			      
			      var topic_name_to_move; //토픽이름   
			      var folder_name_arrived; //해당 폴더이름 
			      $.ajax({
  							type: "post",
  							url: "dragServlet",
  							data: {
  								   "topic_name_to_move" : topic_name_to_move,
  								   "folder_name_arrived" : folder_name_arrived	
  								   },
  							datatype: "json",
  							success: function(data) {  
  								 $(".left_up5_add.dropzone").each(function(index) {
  									var s = $(this).find(".draggable").html();
  									if(s===undefined) {
  										// 1. class이름에 placeholder를 추가
  										class_name = $(this).attr('class');
  										if(class_name.indexOf('placeholder')==-1)
	  										$(this).attr('class', $(this).attr('class')+" placeholder");
  										
  										// 2. 텍스트 추가 : "폴더에 토픽을 끌어다 놓으세요"
  										$(this).html("폴더에 토픽을 끌어다 놓으세요");
  									}
  							    });
  							},
  							error: function(request, status, error){ 
 								alert("에러!");
 							} 
  						});
			      
			    
				}

			 });

			
			// dragged end ★★★★★★ 
			 
			 
			
			$("#test_A").click(function(){
				alert("!!!!!!!!!!!!!")
			});
			 
			 
			 
        });
    
   
    </script>
</head>
<body>


<div id="main_div">


				
	<div id="header">
		 ①Window 또는 Mac에 최적화된 티머 애플리케이션을 설치하여 편리하게 사용하세요. <span class="header_bo"><u>다운로드</u></span><span class="header_bo"><u>&nbsp;다시 물어보지 않기</u></span>
	</div>
	<!--  header부분 div닫는태그 -->
	<div id="contain_main">
		<div id="left_div">
			<a href="javascript:doDisplay1();">
			<!-- 왼쪽 화면단 시작 부분 -->

			<!--왼쪽 div중 제일 상단 코리 부분 -->
			<div id="left_up1">
				<span class="left_up1_image1"><img src="images/mp_teamer_logo.png"></span>
				<div class="left_up1_div tooltip">
					 <span><%=t_name %></span>
					 <span class="tip2">팀 전환하기</span>
				</div>
				<span class="left_up1_image2" id ="team_change_logo_right_butimg"><img src="images/mp_bottom_arrow.png"></span>
				</a>
			</div>
			<!--왼쪽 div중 제일 상단 코리 끝나는 부분 -->

			<!-- 왼쪽 div- 토픽 또는 채팅방 검색 div -->
			<div id="left_up2">
				<div class="left_up2_div tooltip">
					<span class="tip3">토픽 또는 채팅방으로 바로 이동하기</span>
					 토픽 또는 채팅방 검색
				</div>
			</div>
			<!-- 왼쪽 div- 토픽 또는 채팅방 검색 div -->

			<!-- 왼쪽 div- 토픽 메뉴 바 div -->
			<div id="left_up3">
				<div class="left_up3_title">
					 토픽
				</div>
				<span class="left_up3_image1"><img src="images/mp_top_arrow.PNG"/></span>
				<a href="javascript:doDisplay20();" id="img_but_15pic">
				<span class="left_up3_image2"><img src="images/mp_plus_im.PNG"/></span>
				</a>
			</div>
			<!-- 왼쪽 div- 토픽 메뉴 바 div -->

			<!-- 왼쪽 div- 토픽 정렬 바 div -->
			<div id="left_up4">
				<span class="left_up4_image">
				<img src="images/mp_name_sh.PNG">
				</span>
				<div class="left_up4_div1">
					 이름 순
				</div>
				<button class="left_up4_div2" id="lu_folder_made" style="cursor:pointer;">
					 폴더 생성
				</button>
			</div>
			<!-- 왼쪽 div- 토픽 정렬 바 div -->

			<!-- 왼쪽 div- 폴더 명 div -->
		
						 
			<%
					ArrayList<folderNameVO> folderNamelist = new ArrayList<folderNameVO>();
					sql="select f_name,f_index from folders where f_t_index=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, t_index);
					rs = pstmt.executeQuery();
					String folderName;
					String folderIndex; 
					while(rs.next()){
						folderName = rs.getString("f_name");
						folderIndex = rs.getString("f_index");
						folderNamelist.add(new folderNameVO(folderName,folderIndex));
					}
					rs.close();
					pstmt.close();
					
					ArrayList<TopicNameVO> topiclist= new ArrayList<TopicNameVO>();
				    
					//sql = "select t_public,t_name,t_id from topic where t_team_index=? ";
					sql = "select t.t_public t_public,t.t_name t_name,t.t_id t_id,ft.f_index_2 f_index_2 from topic t, folder_topic ft where t.t_id=ft.f_topic_id (+) and t_t_index=? and t_id like 'T%'";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, t_index);
					rs = pstmt.executeQuery();
					String topicName;
					String t_public;
					String t_id;
					String f_index_2;
					while(rs.next()) {
						topicName = rs.getString("t_name");
						t_public = rs.getString("t_public");
						t_id = rs.getString("t_id");
						f_index_2 = rs.getString("f_index_2");
						topiclist.add(new TopicNameVO(topicName,t_public,t_id, f_index_2));
					}
					rs.close();
					pstmt.close();
					
			%>
			
			<!-- left_up5 시작하는 부분 -->

			<div id = "left_up5_6">
			<%
 				for(folderNameVO folderVO : folderNamelist) {
 			%>
					<div class="left_up5" style="border-bottom: 2px #d6dadb solid;"id="left_up5<%=folderVO.getF_index()%>">
						<div class="left_up5_image1">
							<i class="far fa-folder icon_folder"></i>
						</div>
						<div class="left_up5_div1">
							 <%=folderVO.getF_name()%>
						</div>
						<div class="left_up5_div2">
							 &nbsp; 
						</div>
		
						<a class="tooltip">
						<!-- //cecece2 -->
							<div class="left_up5_image2" id="lu_folder_imgbut" f_index = "<%=folderVO.getF_index()%>">
								<%-- <span><%=folderVO.getF_index()%></span> --%>
								<!-- gozoo -->
								<input type = "hidden" class = "loginEmail_park" value = "<%=loginEmail%>">
								<input type = "hidden" class = "domain_park" value = "">
								<div class="icon_menu">
									<i class="fas fa-ellipsis-h icon_ellipsis"></i>
								</div>	
							</div>
						</a>
					</div>
					<% 
						String dropzoneClassAdded = "";
						int cnt = 0;
						for(TopicNameVO topicVO : topiclist) {
							if(topicVO.getF_index_2()!=null && topicVO.getF_index_2().equals(folderVO.getF_index())) {
								cnt++;
							}
						}
						if(cnt==0)
							dropzoneClassAdded = " placeholder";
					%>
					
					<div class="left_up5_add dropzone<%=dropzoneClassAdded%>">
					
				<!-- 	var topic_name = $(this).find("#topic_name").text(); -->
						<%
						cnt = 0;
						for(TopicNameVO topicVO : topiclist) {
							if(topicVO.getF_index_2()==null)
								continue;
							if(topicVO.getF_index_2().equals(folderVO.getF_index())) {
								cnt++;
						%>
								<div class="left_up6_div draggable" draggable="true">
								<input type = "hidden" class = "login_emailA" name = "login_email" value = "<%=loginEmail%>">
								<input type = "hidden" class = "team_indexA" name = "team_index" value = "<%=t_index%>">
									<span class = "topic_name"><%= topicVO.getT_name()%></span>
									<% 
										if(!(topicVO.getT_public().equals("y"))) {
									%>
										<i class="fas fa-lock icon_lock"></i>
									<% } %>
								</div>				
						<% 
							}
						} 
						if(cnt==0) {
						%>
							폴더에 토픽을 끌어다 놓으세요
						<%
						}
						%>
						
						
						
					</div>
			<%
				}
			%>
				<input type = "hidden" id = "login_emailB" name = "login_email" value = "<%=loginEmail%>">
				<input type = "hidden" id = "team_indexB" name = "team_index" value = "<%=t_index%>">
 		<script>
		var g_s;
		var g_r;
         $(function() {
              $("#lu_folder_made").on("click", function() {
               str = '<div >'
                  +'<div class="left_up5_image1">'
                  +'<img style = "margin-top:6px;" src="images/mp_foler_img.PNG">'
                  +'</div>'
                  +'<div class="left_up5_div1">'
                  +'<input type="text" class="folderName_input" name="folder" id="folderNameid" value="새폴더">'
                  +'</div>'
                  +'<div class="left_up5_div2">'
                  +'    &nbsp; '
                  +'</div>'
                  +'<a href="javascript:doDisplay24();" class="tooltip">'
                  +'<div class="left_up5_image2" id="lu_folder_imgbut">'
                  +'<img style = "margin-left:-48px; margin-top:-12px;" src="images/mp_folder_menu.PNG"/>'
                  +'<div class="tip4">더보기</div>'
                  +'</div>'
                  +'</a>'
                  +'</div>';
                  $("#left_up6").append(str);
                  $(".folderName_input").keyup(function(e){
  						if(e.keyCode == 13){
  							console.log("콘솔로그찍힘");
  							_this = $(this);
  							var folderName = _this.val();
  							var login_emailB = $("#login_emailB").val();
  							var team_indexB = $("#team_indexB").val();
  							/* alert("로그인아이디 : " + login_emailB + "인덱스(팀)" + team_indexB); */
  							console.log(folderName);
  						 	 $.ajax({
  								type: "post",
  								url: "folderNameServlet",
  								data: {"folderName": folderName,"login_emailB":login_emailB,"team_indexB":team_indexB},
  								datatype: "json",
  								success: function(data) {  
									location.reload();
  								},
  								error: function(request, status, error){ 
  									alert("에러!");
  									g_r = request;
  									g_s = status;
  								} 
  							}) 
  						}
                  });
              });
              	
	              
              $(".left_up5").click(function(){
            	  //console.log($(this).next(".left_up5_add"))
            	  $(this).next(".left_up5_add").slideToggle("fast");
              });
              
              $(".left_up5_add.dropzone").each(function(index) {
            	 var s = $(this).find(".draggable").html();
            	 if(s!==undefined) {
            		 $(this).slideToggle("fast");
            	 }
              });
          }); 
         
         </script>
			<!-- 왼쪽 div- 폴더 명 div -->
			
			

			<!-- 왼쪽 div- 토픽 방 리스트 div -->
		    <%-- <%
				ArrayList<TopicNameVO> topiclist2 = new ArrayList<TopicNameVO>();
		    
				sql = "select t_public,t_name,t_id from topic where t_t_index=? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, t_index);
				ResultSet topicList2 = pstmt.executeQuery();
				while(topicList2.next()) {
					String t_public2 = topicList2.getString("t_public");
					String topicName2 = topicList2.getString("t_name");
					String topicId2 = topicList2.getString("t_id");
					topiclist2.add(new TopicNameVO(topicName2,t_public2,topicId2));
				} 
			%>   --%>
			
			<div id="left_up6" class = "dropzone">
			
			
			<%-- <script>
			function changeTopicName(){
				$(".notify_font").text("<%=Tlist.getT_name()%>")
			}
			</script> --%>
		<style>
			.left_up6_div { cursor:pointer; }
		</style>			
			<script>
			function changeTopic(){
				$(".middle_firtst_page").hide();
				$(".middle_chat_div").show();
			}
				var topic_name = "";
				$(function(){
					// 토픽클릭시 (mainpage.jsp?토픽이름&팀인덱스)로 보냄.
					$(".left_up6_div").click(function(){		
						$("#middle_first_page").hide();
						$("#middle_chat_div").show();
						var topic_name = $(this).find(".topic_name").text();
						var team_indexA = $(".team_indexA").val();
						var login_emailA = $(".login_emailA").val();
						$('#middle_chat_div').find(".notify_font").text(topic_name);
						
						//location.href = "chat_action.jsp?topic_name="+topic_name+"&team_index="+team_indexA+"&login_email="+login_emailA;
						the_url = "mainpage.jsp?chatTopicName="+topic_name+"&chatTeamIndex="+team_indexA+"&chatLoginEmail="+login_emailA;
						if('<%=request.getParameter("domain")%>'!='null')
							the_url += '&domain=<%=request.getParameter("domain")%>';
						if('<%=request.getParameter("owner")%>'!='null')
							the_url += '&owner=<%=request.getParameter("owner")%>';
						location.href = the_url;
						/* location.href = "../ChatServlet"; */
					});	
					
					//채팅방 클릭시 
					$(".div8_child").click(function() {
						$("#middle_first_page").hide();
						$("#middle_chat_div").show();
						
						var chat_name = $(this).text();
						
						var team_indexA = $(".team_indexA").val();
						var login_emailA = $(".login_emailA").val();
						$('#middle_chat_div').find(".notify_font").text(chat_name);
						
						the_url = "mainpage.jsp?chatTopicName="+chat_name+"&chatTeamIndex="+team_indexA+"&chatLoginEmail="+login_emailA;
						if('<%=request.getParameter("domain")%>'!='null')
							the_url += '&domain=<%=request.getParameter("domain")%>';
						if('<%=request.getParameter("owner")%>'!='null')
							the_url += '&owner=<%=request.getParameter("owner")%>';
						location.href = the_url;
					});
				})
				
			</script>
			
			<!-- 이름 클릭했을 때 middle_div가 바뀌게 해야함 -->
			<a class="left_up6_a"></a>
			<% for(TopicNameVO topicVO : topiclist) { 
				if(topicVO.getF_index_2()!=null)
					continue;
			%>
				<div class="left_up6_div draggable" draggable = "true">
				<input type = "hidden" class = "login_emailA" name = "login_email" value = "<%=loginEmail%>">
				<input type = "hidden" class = "team_indexA" name = "team_index" value = "<%=t_index%>">
					 <span class = "topic_name"><%=topicVO.getT_name()%></span> 
			<%
				if(!(topicVO.getT_public().equals("y"))) {
			%>
					<i class="fas fa-lock icon_lock"></i>
			<% } %>
				</div>				
			<% } %>
			</div>
			</div>
			<!-- left_up6 끝나는 부분 -->
			
			<script>
			var g_s;
	        var g_r;
			$(function(){
				$("#ct_bottom_construct_div_text").click(function(){
					//토픽이름값 가져오기 
					var topic_name = $("#ct_search_topic").val();
					
					var login_email = $("#login_emailB").val();
					var team_indexA = $("#team_indexB").val();
					
					
					//라디오박스 value값 가져오기 
					var topic_public = $('input:radio[name=t_public]:checked').val();
					
					$.ajax({
						type:"post",
						url:"topicServlet",
						data:{"topic_name" : topic_name,"topic_public":topic_public,"login_email":login_email,"team_indexA":team_indexA},
						datatype:"json",
						success: function(data){
							location.reload();
						},
						error: function(request,status,error){
							alert("에러");
							g_r= request;
							g_s=status;
						}
					})
				});
				
				
				// 팀 변경하기 gozoo
				$(".teamchange_list1").click(function(){
					var team_name = $(this).find(".teamchange_teamname1").text().trim();
					var team_domain = $(this).find(".domain").text().trim();
					var login_id = $(".curr_login_id").val();
					
					
					/* alert("현재 로그인되어있는 아이디는 " + login_id + " 입니다. "); 
					alert("팀이름은 " + team_name + " 입니다." + " 또한 팀 도메인은 " + team_domain + " 입니다. "); */
					
					location.href = "mainpage.jsp?domain="+team_domain+"&owner="+login_id;
					<%-- location.href = "mainpage.jsp?domain="+"<%=domain%>"+"&owner="+"<%=owner%>"; --%>  
					
				});
				
				
				
				
			});
			</script>
			<!-- 왼쪽 div- 토픽 방 리스트 div -->
			
			
			

			<!-- 왼쪽 div- 채팅 바 div -->
			<div id="left_up7">
				<div class="left_up7_title">
					 채팅
				</div>
				<span class="left_up7_image1">
				<img src="images/mp_bottom_arrow.png">
				</span>
				<span class="left_up7_image2" id="lu7_img_but">
				<a href="javascript:doDisplay13();">
				<img src="images/mp_plus_im.PNG">
				</a>
				</span>
			</div>
			<!-- 왼쪽 div- 채팅 바 div -->
			
				<!-- 파추호 -->
			 <!-- 채팅리스트 뜨는곳 div8 주호 -->
			<%
         ArrayList<topicName> chatlist = new ArrayList<topicName>();
         sql="select t_name, t_member from topic where t_t_index= ? and t_id like 'C%'";
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, t_index);
         rs = pstmt.executeQuery();
         while(rs.next()){
            String chat_name = rs.getString("t_name");
            String chat_member = rs.getString("t_member");
            chatlist.add(new topicName(chat_name, chat_member));
         }
      %>
         
         
         <div id="left_up8">
            
            <%
               for(topicName cn: chatlist){
            	String[] chat_member = cn.getT_member().split("_");
            	for(int z=0; z<chat_member.length; z++){
            		if(chat_member[z].equals(loginEmail)){ %>
            			
               			<div class="div8_child"><%=cn.getT_name() %></div>
               			<% 
            		}
            	}
               }
            %>
         </div>
			
			<!-- 채팅리스트 뜨는곳 div8 끝나는곳 --> 
			
		</div>
		<!-- 왼쪽 div 닫는태그-->

<!-- 가운데 div 시작하는 부분 -->
		<div id="middle_div" style="display: block;">
			<div id="middle_first_page" style="<%=styleMiddleFirstPage%>">
				<img src="images/mainjandi.png" width="376px" height="320px" id="main_img" style="padding-top: 10em;"/>
				<div id="middle_first_div">
					 오늘은 어디에서 시작해볼까요?
				</div>
				<br/><br/>
				<div id="middle_second_div">
					 프로젝트별 특정 주제의 그룹 대화는 '토픽'<br/><br/>자유로운 1:1 또는 그룹 대화는 '채팅'
				</div>
			</div>

<!-- teamchange -->
			<div id="teamchange" style="display: none;">
				<div class="teamchange_whole">
					<div class="teamchange_title">
						<div class="teamchange_title_text">
							 팀 리스트
						</div>
						<img class="teamchange_title_image" src="images/arrow_up.png">
					</div>



					<%
						for (teamlistVO teamchoice : list2) {
					%>
					<div class="teamchange_list1 background_change">
						<input type = "hidden" class = "curr_login_id" value = "<%=loginEmail%>">
						<img class="teamchange_list1_image jandi_class" src="images/jandi.png">
						<div class="text_margin">
							<div class="teamchange_teamname1">
								 <%= teamchoice.getT_name() %>
							</div>
							<div class="domain">
								 <%= teamchoice.getT_domain() %>
							</div>
						</div>
					</div>
					<%
						}
					%>
				</div>
			</div>
<!-- teamchange -->

<!-- rightmenu -->
			<div id="rightmenu" style="display: none;">
				<div id="rightmenu_whole">
					<div class="rightmenu_invitemem">
						<a href="javascript:doDisplay28();">
						<span class="rightmenu_invitemem_text">
						+ 새로운 멤버 초대하기 </span></a>
					</div>
					<div>
						<ul>
							<span class="rightmenu_team">팀</span>
							<a href="javascript:doDisplay1();">
							<li>&nbsp; 팀 전환하기</li>
							</a>
							<a href="member_management.jsp">
							<li>&nbsp; 관리자 메뉴</li>
							</a>
						</ul>
					</div>
					<div>
						<ul>
							<span class="rightmenu_setting">설정</span>
							<a href="javascript:doDisplay15();">
							<li>부재중 설정</li>
							</a>
						</ul>
					</div>
					<div>
						<ul>
							<span class="rightmenu_else">기타</span>
							<a href="team_choice.jsp">
							<li>&nbsp; 티머 메인으로</li>
							</a>
							<a href="teamer_logout.jsp">
							<li>&nbsp; 로그아웃</li>
							</a>
						</ul>
					</div>
				</div>
			</div>
<!-- rightmenu 끝나는 부분 -->

<!-- searchA 시작 부분 -->


	
			<div id="searchA" style="display: none;">
				<div class="searchA_whole">
					<span class="searchA_title">
					검색 </span>
					<span class="searchA_close_image">
					<img src="images/search_x.png" class="close_btn">
					</span>
					<div style="clear: both">
					</div>
					<!-- 검색 -->
					<div class="searchA_search">
						<!-- 검색어 input -->
						<div>
						<!-- sojin -->
							<input class="searchA_search_input" type="text" id="searchA_input" placeholder="검색어를 입력하세요">
							<input type = "hidden" id="searchA_t_index" value = "<%= t_index %>">
							<script>
								$("#searchA_input").keyup(function(e){
									if(e.keyCode == 13){
										var search_content = $("#searchA_input").val();
										<%-- var t_index = <%=t_index%>; --%>
										var t_index = $("#searchA_t_index").val();
										$.ajax({
											type: "get",
											url: "searchServlet",
											data: {"search_content": search_content, "t_index" : t_index},
											datatype:"json",
											success: function(data){
												//console.log(data)
												search_arr=data;
												
												/* ---------------------data출력값-------------------- */
												str2="";
												cnt=0;
												for(var i=0; i<search_arr.length-1;i++){
													cnt++;
													var content_replace = search_arr[i].m_content.replace(search_arr[search_arr.length-1],'<mark class="searchA_result1_file_mark">'+search_arr[search_arr.length-1]+'</mark>') 	
													
													str2+='		<div class="searchA_result1">'
/* 													 	+					search_arr[i].p_image */
														+'			<img class="searchA_result1_image" src="'+ search_arr[i].p_image +'" />'//이자리 프로필 떠야
														+'				<div>'
														+'					<div class="searchA_result1_name">'
														+					search_arr[i].mem_name //채팅 보낸 사람이름 
														+'					</div>'
														+'				<div style="clear: both"></div>'
														+'				<div class="searchA_result1_time">'
														+					search_arr[i].m_date //채팅 보낸 날짜 
														+'				</div>'
														+'				<div class="searchA_result1_file">'
																			//검색된 내용 전체 -->검색된 내용전체중 검색한 내용물만 하이라이팅
														+  					content_replace
														+'				</div>'
														+'				<div class="searchA_result1_teamname">'
														+					search_arr[i].t_name //검색된 채팅,토픽방이름 
														+'				</div>'
														+'			</div>'
														+'			<div class="searchA_result_text2">'
														+'			</div>'
														+'		</div>';
													
													}
												$(".search_html").html(str2);
												
											   str ='<div class="searchA_message_result">'
												   +'	"<span class="searchA_message_result_font">'
												   +	 search_arr[search_arr.length-1]//입력한 검색된 내용물 
												   +'	</span>'
												   +'	"에 대한 검색 결과가 "<span class="searchA_message_result_font">'
												   +	cnt
												   +'	</span>'//검색된 갯수 
												   +'	"건 있습니다.'
												   +' </div>';
												$(".searchA_message").html(str);
											},
											error: function(request,status,error){
												alert("에러!");
											}
										})
									}
								})
							</script>
						</div>
					</div>
					<!-- 전체,메시지,파일-->
					<div class="searchA_menu">
						<div class="searchA_menu_list">
							<span class="sa_menu_list1">전체</span>
							<span class="sa_menu_list2">메시지</span>
							<span class="sa_menu_list3">파일</span>
						</div>
					</div>
					<!-- 참여대화방,모든멤버,기간 설정 -->
					<div class="searchA_settings">
						<img class="searchA_drop_image" src="images/drop.png">
						<div class="searchA_recent">
							 최신 순!
						</div>
						
						<!-- <!— ——메시지 검색——— ———> -->
						<div class="searchA_message"><!--  총 검색된 개수 --></div>
						
						<!-- <!——— 검색된값 출력하기 ———> -->
					    <div class="search_html" style=""><!-- ----검색된값 출력----- --></div>	
						
					<!-- ——— ——————————— —————————— -->	
					</div>
					<!-- <!——————————— ———————————— ————————————> -->
				</div>
			</div>



<!-- searchA 끝나는 부분 -->

<!-- todo 시작하는 부분 -->
			<div id="todo" style="display: none;">
				<div class="todo-top">
					<span class="todo_title">
					할 일 </span>
					<div class="button-calendar-class">
						<button type="button" class="button_calendar">
						<div class="button_calendar_image">
							<img src="images/calendar.png">
						</div>
						<div class="button_calendar_text">
							<span> 할 일 일정 </span>
						</div>
						</button>
					</div>
					<span class="todo_close_image"><img src="images/vote_x_button.png" class="vote_x_btn"/></span>
				</div>
				<div style="clear: both">
				</div>
				<div class="class-section">
					<div class="making-todo">
						<div class="button-box">
							<button type="button" class="todo_making_button">
							<div class="todo-make-image" style="float:left;">
								<span class="vote-image">
								<img src="images/vote_plus_button.png">
								</span>
							</div>
							<div class="todo-make">
								<span class="todo-text">
								할 일 생성 </span>
							</div>
							</button>
						</div>
					</div>
					<div class="making-todo-tool">
						<ul class="making-todo-tool-list">
							<li class="pointer non-selectable dropdown-toggle dropdown open" dropdown style>
							<button type="button" class="dropdown-toggle" dropdown-toggle aria-haspopup="true" aria-expanded="true">
							<div class="dropdown-toggle-make dropdown_create">
							생성 순 </div>
							<div class=dropdown-toggle-make-div>
								<div class="dropdown-toggle-make-image">
								<img src="images/down_icon.png">
								</div>
							</div>
							</button>
							</li>
							<li class="second_li">
							<button type="button" class="dropdown-toggle" dropdown-toggle aria-haspopup="true" aria-expanded="true">
							<div class="dropdown-toggle-make dropdown_all">
							모든 할 일 </div>
							<div class="dropdown-toggle-make-div dropdown_div">
								<div class="dropdown-toggle-make-image">
								<img src="images/down_icon.png">
								</div>
							</div>
							</button>
							</li>
						</ul>
					</div>
				</div>
				<section id="tool-todo-list" class="tool-todo-list-class">
				<section class="tool-todo-list-section">
				<!-- <span class="button-label">
				완료된 할 일 제외 </span>
				<div class="button-label-toggle">
					<button type="button"><img src="images/toggle_image.png"></button>
				</div> -->
				</section>
				</section>
				<div class="tool-todo-lists">
					<div class="percent">
						<span class="percent-title"> 진척률 : </span>
						<span class="percent_zero"> 0 % </span>
						<span class="percent-made-date"> 생성일: 2021/10/18 </span>
					</div>
					<div class="list-title">
						 점심 투표하세요~!
					</div>
					<div class="list-detail">
						 ㅎㅎ
					</div>
					<!-- <hr class="todo_line" width="100%"> -->
					<div class="schedule">
						 일정: 2021/10/18 11:30 ~ 2021/10/19 00:00
					</div>
				</div>
			</div>
<!-- todo 끝나는 부분 -->

<!-- file_main 시작하는 부분 -->
<div id="file_main" style="display: none;">
	<div id="fm_header">
		<div id="fm_header_inner_div" ><b>파일</b></div>
		<img src="images/exit.png" style="float: right;"/>
	</div>
	<div id="fm_main_section">
		<div id="fm_marin_section_menu1">
			<div id="fm_marin_section_menu1_1">
				<div class="up2_text">미틱토픽방</div>
				<div class="up2_scroll">&or;</div>
			</div>
		</div>
		<div id="fm_marin_section_menu2">
		  <div id="fm_marin_section_menu2_1">
			   <div class="up2_text">모든 멤버</div>
			   <div class="up2_scroll">&or;</div>
		  </div>
		</div>  
		<div id="fm_marin_section_menu3">
			<div id="fm_marin_section_menu3_1" >
				<div class="up2_text" >모든 파일</div>
				<div class="up2_scroll">&or;</div>
			</div>
		</div>
	</div> <!--위에서 두번째 div닫는태그-->
	<div id="fm_section2">
		<div id="fm_sec2_count"class="gray_font">"<span id="black_font">1</span>"개가 로딩되었습니다.</div>
	</div>
	<div id="fm_sec2_2">
		<img src="images/file_text.png " width="80px" height="80px" id="fm_sec2_img"/>
		<div style="float: left;">
			<div class="up3_text">
				<div style="float: left;">박주호 &nbsp;</div>
				<div style="float: left;" class="gray_font">2021/11/24 2:22 PM</div>
				<div style="clear: both;"></div>
			</div>
			<div class="up3_text" style="font-weight: 600;">chrome.exe</div>
			<div id="fm_topic_name" class="up3_text">미팅토픽방</div>
		</div>
	</div>
	<div style="background-color: #f2f4f8 ;height: 57vh;">
		<img src="images/fl_bottom_round.png" style="margin: 0 auto; display: block;"/>
	</div>
</div>
<!-- file_main 끝나는 부분 -->

<!-- vote 시작하는 부분 -->
			<div id="vote" style="display: none;">
				<div class="vote-top">
					<span class="vote_title">
					투표 </span>
					<span class="vote_close_image"><img src="images/vote_x_button.png"/></span>
				</div>
				<div style="clear: both">
				</div>
				<div class="class-section2">
					<div class="making-vote">
						<div class="button-box">
							<button type="button" class="vote_making_button">
							<div class="vote-make-image" style="float:left;">
								<span>
								<img src="images/vote_plus_button.png" class="vote-image">
								</span>
							</div>
							<div class="vote-make">
								<span class="vote-text">
								투표 만들기 </span>
							</div>
							</button>
						</div>
					</div>
					<div class="vote-list">
						<ul class="vote-list-ul">
							<li class="ng-scope">
							<div class="vote-card">
								<span class="vote-thesis"> 점심 메뉴 </span>
								<div class="vote-end-button">
									<span class="vote-end">
									투표 마감 </span>
								</div>
								<div class="vote-participants">
									 박소진, 박주호
									 
								</div>
								<div class="vote-info">
									<div class="vote-info-image">
										<span><img src="images/vote_people.png"></span>
									</div>
									<span class="participants-num"> 3명 참여 </span>
									<div class="vote-info-clockimage">
										<span><img src="images/vote_clock.png"></span>
									</div>
									<span class="vote-end-time"> 2021/10/19 12:00 PM 마감됨</span>
								</div>
							</div>
							</li>
							<li class="ng-scope">
							<div class="vote-card">
								<span class="vote-thesis"> 오늘 점심 </span>
								<div class="vote-end-button">
									<span class="vote-end">
									투표 마감 </span>
								</div>
								<div class="vote-participants">
									 박소진, 박주호
								</div>
								<div class="vote-info">
									<div class="vote-info-image">
										<span><img src="images/vote_people.png"></span>
									</div>
									<span class="participants-num"> 3명 참여 </span>
									<div class="vote-info-clockimage">
										<span><img src="images/vote_clock.png"></span>
									</div>
									<span class="vote-end-time"> 2021/10/19 12:00 PM 마감됨</span>
								</div>
							</div>
							</li>
							<li class="ng-scope">
							<div class="vote-card">
								<span class="vote-thesis"> 오늘 점심 </span>
								<div class="vote-end-button">
									<span class="vote-end">
									투표 마감 </span>
								</div>
								<div class="vote-participants">
									 박소진, 박주호
								</div>
								<div class="vote-info">
									<div class="vote-info-image">
										<span><img src="images/vote_people.png"></span>
									</div>
									<span class="participants-num"> 3명 참여 </span>
									<div class="vote-info-clockimage">
										<span><img src="images/vote_clock.png"></span>
									</div>
									<span class="vote-end-time "> 2021/10/19 12:00 PM 마감됨</span>
								</div>
							</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
<!-- vote 끝나는 부분 -->

<!-- orga 시작하는 부분 -->
			<div id="orga" style="display: none; ">
				<div class="orgaA">
					<span>
					<img src="images/people.png" class="orga_imgA"/>
					</span>
					<span class="oraga_spanA">
					조직도 </span>
					<span><img src="images/x.png" class="orga_close"/></span>
					<div style="clear: both">
					</div>
					<!-- 부서,멤버 -->
					<div class="orgaB">
						<div class="orgaC">
							<span class="orga_spanB">부서</span>
							<span class="orga_spanC">멤버</span>
						</div>
					</div>
					<!-- 검색 -->
					<div class="orgaD">
						<div class="orgaE">
							<span class="orga_spanD">
							<i class="fa fa-search" style="margin-left: -25px"></i>
							&nbsp;&nbsp;부서 이름을 검색하세요.</span>
						</div>
					</div>
					<!-- 개발1팀  -->
					<div class="orgaF">
					
				<%-- 	<% 
						for(department_cnt orga : d_cnt) {
					%>
						<div class="orgaG">
							<span class="orga_spanE"><%=((orga.getP_department()==null) ? "부서를 설정하지 않은 멤버": orga.getP_department())%></span>
							<span class="dept_cnt2"><input type = "text" disabled="disabled" name = "departmentMemCount" class = "dept_cnt" value = <%=orga.getP_department_cnt()%>>명</span>
						</div>
					<% 
						}
					%> --%>
				
					<% 
						for(department_cnt orga : d_cnt) {
					%>
						<div class="orgaG">
							<div class = "orga_spanE"><%=((orga.getP_department()==null) ? "부서를 설정하지 않은 멤버": orga.getP_department())%></div>
							<div class="dept_cnt2"><input type = "text" disabled="disabled" name = "departmentMemCount" class = "dept_cnt" value = <%=orga.getP_department_cnt()%>></div>
						</div>
					<% 
						}
					%>
					
					</div>
					
			
					<!-- 소진, 정회원 -->
					<div class="orgaJ">
						<% for (profileVO orga_profile : profileList2) {
							if(loginEmail.equals(orga_profile.getP_email())) {
						%>
						<div style = "margin-top : 15px;">
							<img src="<%=((orga_profile.getP_image()==null)?"https://i.ibb.co/5G1vGSt/image.jpg":orga_profile.getP_image()) %>" class="orga_imgD"/>
							<div class="orgaK">
							<%= orga_profile.getMem_name()%>
							</div>
							<div style="clear: both">
							</div>
							<div class="orgaL">
							<%
								String orga_department = orga_profile.getP_department();
								String orga_position = orga_profile.getP_position();
								if(orga_profile.getP_department()==null){
									orga_department = "";
									System.out.println("널값입니당");
								}
								if(orga_profile.getP_position() == null){
									orga_position = "";
								}
							%>
								 <%= orga_department + "\t" + orga_position%>
							
							</div>
							<img src="images/jg_jung_member.png" class="orga_imgE"/>
						</div>
						<% 
							}
							else {
								%>
								<div style = "margin-top : 15px;">
								<img src="<%=((orga_profile.getP_image()==null)?"httpss://i.ibb.co/5G1vGSt/image.jpg":orga_profile.getP_image()) %>" class="orga_imgD"/>
								<div class="orgaK">
								<%= orga_profile.getMem_name()%>
								</div>
								<div style="clear: both">
								</div>
								<div class="orgaL">
									<%
									String orga_department = orga_profile.getP_department();
									String orga_position = orga_profile.getP_position();
									if(orga_profile.getP_department()==null){
										orga_department = "";
										System.out.println("널값입니당");
									}
									if(orga_profile.getP_position() == null){
										orga_position = "";
									}
								%>
									 <%= orga_department + "\t" + orga_position%>
									
								 	<%-- <%= orga_profile.getP_department() + "\t" + orga_profile.getP_position()%> --%>
								</div>
								<img src="images/jg_jung_member.png" class="orga_imgE"/>
							</div>
								<%
							}
								} %>
						
						<!-- <div>
							<img src="images/jg_park_image.png" class="orga_imgF"/>
							<div>
								<div class="orgaM">
									 박주호
								</div>
								<div style="clear: both">
								</div>
								<div class="orgaN">
									 개발1팀 사장
								</div>
								<img class="orga_imgG" src="images/jg_manager_logo.png"/>
							</div>
						</div> -->
					</div>
				</div>
			</div>
<!-- orga 끝나는 부분 -->

<!-- drive 시작하는 부분 -->
			<div id="drive">
				<div class="drive_div">
					 죄송합니다. 준비중입니다 :P <br>
					 Sorry <br>
					 We are preparing for the service. <br>
					 :P
				</div>
			</div>
<!-- drive 끝나는 부분 -->

<!-- connect 시작하는 부분 -->
			<div id="connect" style="display: none;">
				<div class="connect_text">
					 죄송합니다. 준비중입니다 :P <br>
					 Sorry <br>
					 We are preparing for the service. <br>
					 :P
				</div>
			</div>
<!-- connect 끝나는 부분 -->

<!-- bookmark_main_div 시작하는 부분 -->
			<div id="bookmark_main_div" style="display: none;">
				<div class="bookmark_main_favorite">
					<div class="bookmark_main_favorite_text">
						 즐겨찾기
					</div>
					<img class="bookmark_main_favorite_image" src="images/exit.png">
				</div>
				<div style="clear:both;">
				</div>
				<div class="bookmark_main_types">
					<div class="bookmark_type1">
						 모든 형식
					</div>
					<div class="bookmark_type2">
						 파일 형식
					</div>
				</div>
				<div class=bookmark1>
					<div class=bookmark1_div>
						<img class="bookmark1_div_image" src="images/pro_img.png">
						<div class="bookmark1_div_div">
							<div class="bookmark1_div_div_name">
								 박주호 &nbsp;
							</div>
							<div class="bookmark1_div_div_time">
								 2021/10/29 12:28 PM
							</div>
							<div style="clear: both;">
							</div>
							<div class="bookmark1_div_div_roomname">
								 미틱토픽방
							</div>
						</div>
						<img class=bookmark1_div_div_image src="images/bookmark.png">
					</div>
					<div style="clear: both;">
					</div>
					<div class="bookmark1_div_appointment">
						 채은,소진 11-26 약속
					</div>
				</div>
				<div class=bookmark2>
					<div class=bookmark2_div>
						<img class=bookmark2_div_image src="images/small_fileimage.png">
					</div>
					<div class="bookmark2_div2">
						<div class="bookmark2_div2_div1">
							<div class="bookmark2_div2_div1_name">
								 박주호 &nbsp;
							</div>
							<div class="bookmark2_div2_div1_time">
								 2021/11/25 11:05 AM
							</div>
							<div style="clear:both;">
							</div>
						</div>
						<div class="bookmark2_div2_div2">
							 Oracle system1234.sql
						</div>
						<div class="bookmark2_div2_div2_roomname">
							 박소진,이채은
						</div>
						<img class="bookmark2_div2_div2_image" src="images/bookmark.png">
					</div>
					<!--첫째줄-->
					<div style="clear:both;">
					</div>
				</div>
				<!--젤 큰 div-->
				<div class=bookmark3>
					<img class=bookmark3_image src="images/fl_bottom_round.png">
				</div>
			</div>
			<!--젤 큰 div-->
<!-- bookmark_main_div 끝나는 부분 -->

<!-- mention_main_div시작 부분 -->
			<div id="mention_main_div" style="display: none;">
				<div class="mention_top">
					<div class="mention_text">
						<div class="mention_text2">멘션</div>
					</div>
					<img class="mention_image" src="images/exit.png">
				</div>
				<div class="mention_list_date">
					 2021년 11월 12일 금요일
				</div>
				<div class="mention_list_info">
					<div>
						<img src="images/lee_chea_pro.png" class="chens_img"/>
						<div class="mention_list_info_div">
							<div class="mention_list_info_div_name">
								 이채은
							</div>
							<div class="mention_list_info_div_date">
								 2021/11/12 3:22 PM
							</div>
							<div style="clear: both;">
							</div>
							<div class="mention_list_info_div_teamname">
								 박소진,이채은
							</div>
						</div>
						<div style="clear: both;">
						</div>
					</div>
					<div class="mention_list_mentioned">
						 박주호
					</div>
				</div>
				<div class="mention_div2">
					<img class="mention_div2_image" src="images/fl_bottom_round.png">
				</div>
			</div>
<!-- mention_main_div 끝나는 부분 -->

<!-- myDIV 시작 부분 -->
<script>
function press(f){ 
	if(f.keyCode == 13){ formname.submit(); 
		} 
	}
	
$(function(){
	$("#pronounce_id").keydown(function(key){
		if(key.keyCode == 13){
			var new_pron = $(this).val();
			var p_t_index = $("#pron_t_index").val();
			var p_email = $("#pron_t_email").val();
			$.ajax({
				type : "post",
				url : "PronounceServlet",
				data : {"update_pron":new_pron,"p_t_index":p_t_index,"p_email":p_email},
				datatype : "json",
				success : function(data){
					$(this).val(data.updatepron);
				},
				error : function(request,status,error){
					alert("넣는거실패함ㅋㅋ");
				}
			});
		}
	});
	
});

$(function(){
	$("#p_department").keydown(function(key){
		if(key.keyCode == 13){
			var new_department = $(this).val();
			var p_t_index = $("#pron_t_index").val();
			var p_email = $("#pron_t_email").val();
			/* alert(p_email); */
			$.ajax({
				type : "post",
				url : "DepartmentServlet",
				data : {"new_department":new_department,"p_t_index":p_t_index,"p_email":p_email},
				datatype : "json",
				success : function(data){
					/* alert('성공'); */
					$(this).val(data.updatedepartment);
					$("#orgaL_input").val(data.updatedepartment);
				},
				error : function(request,status,error){
					alert("넣는거실패함ㅋㅋ");
				}
			});
		}
	});
	
	
});
</script>
			<input id = "pron_t_email" type = "hidden" value = "<%=loginEmail%>">
			<form action = "profile_change.jsp">
					<input type = "hidden" name = "domainA" value = "<%=domain%>">
					<input type = "hidden" name = "ownerA" value = "<%=owner%>">
					<input  type = "hidden" name = "domain" value = "<%=domain%>" onkeypress="JavaScript:press(this.form)"> 
					<input id="pron_t_index" type = "hidden" name = "t_index" value = "<%=t_index%>" onkeypress="JavaScript:press(this.form)">  
			<div id="myDIV" style="display: none;">
				<div id="top">
					<div id="top_A">
						<a href="javascript:doDisplay30();">
						<div id="circleA">
							<img src="<%=((p_image_url==null)?"https://i.ibb.co/5G1vGSt/image.jpg":p_image_url) %>" alt="" class="mydiv_imgA">
						</div>
						</a>
						<div id="circleB">
							<div id="round">
								 소유자
							</div>
						</div>
						<div id="image">
							<li><img src="images/gift2.png" alt="" class="mydivA"></li>
							<li class="mydivB"><img src="images/airplane3.png" alt="" class="mydiv_imgB"></li>
						</div>
					</div>
					
					
					
					
					<div id="profile">
						<ul>
							<li><%=profile_name%></li>
							<li> 
								<input id="pronounce_id" style = "background-color: transparent; color:white; border: 0px solid; "type = "text" name = "profile_pronounce" placeholder = "발음" value = '<%=(p_pronounce==null ? "" : p_pronounce) %>' onkeypress="JavaScript:press(this.form)">
							</li>
							<li>
								<input style = "background-color: transparent; color:white; border: 0px solid; "type = "text" name = "profile_state" placeholder = "상태설정" value = '<%=(p_state==null ? "" : p_state) %>' onkeypress="JavaScript:press(this.form)">
							</li>
							<li>
								<input style = "background-color: transparent; color:white; border: 0px solid; "type = "text" name = "profile_statemessage" placeholder = "상태메세지" value = '<%=(p_statemessage==null ? "" : p_statemessage) %>' onkeypress="JavaScript:press(this.form)">
							</li>
						</ul>
					</div>
					<!-- <input type = "submit" name = "profile_change" value = "" style = "background-color:transparent; border: 0px transparent solid;"> -->
				<!-- 	</form> -->
					
					
					
				</div>
				<!--------------------------------->
				<!-- <form action="profile_changeB.jsp"> -->
				<input type = "hidden" name = "domain" value = "<%=domain%>" onkeypress="JavaScript:press(this.form)"> 
				<input type = "hidden" name = "t_index" value = "<%=t_index%>" onkeypress="JavaScript:press(this.form)">  
					<div id="bottom">
						<div id="first">
							<ul class="mydiv_ul">
								<li class="mydiv_li"><input style = "background-color: transparent;  border: 0px solid; "type = "text" id = "p_department" name = "profile_department" placeholder = "부서명" value = '<%=(p_department==null ? "" : p_department) %>' onkeypress="JavaScript:press(this.form)"></li>
								<li><input style = "background-color: transparent;  border: 0px solid; "type = "text" name = "profile_position" placeholder = "직책" value = '<%=(p_position==null ? "" : p_position) %>' onkeypress="JavaScript:press(this.form)"></li>
								<li>___</li>
							</ul>
						</div>
						<div id="second">
							<ul class="mydiv_ul">
								<li><img src="images/cake.png" alt="">&nbsp; <input style = "background-color: transparent;  border: 0px solid; "type = "text" name = "profile_birth" placeholder = "yyyy년m월d일" value = '<%=(p_birth==null ? "" : p_birth) %>' onkeypress="JavaScript:press(this.form)"></li>
								<li><img src="images/phone.png" alt="">&nbsp; <input style = "background-color: transparent;  border: 0px solid; "type = "text" name = "profile_phone" placeholder = "전화번호" value = '<%=(p_phone==null ? "" : p_phone) %>' onkeypress="JavaScript:press(this.form)"></li>
								<li><img src="images/message.png" alt="">&nbsp; <%=loginEmail %></li>
								<li><img src="images/file.png" alt="">&nbsp; 파일 리스트</li>
								<li><img src="images/mention.png" alt="">&nbsp; 멘션</li>
								<li><img src="images/logout.png" alt="">&nbsp;<a href="teamer_logout.jsp" style="color: black;"> 로그아웃 </a>
								</li>
							</ul>
						</div>
					</div>
			</div>
					<input type = "submit" name = "profile_change" value = "" style = "background-color:transparent; border: 0px transparent solid;">
				</form>
<!-- myDIV 끝나는 부분 -->

<!-- chatframe 시작 부분 -->
			<div id="chatframe" style="display: none;">
				<ul id="chatframe_ul">
					<div id="chatframe_ul_div">
						<div>
							<a href="javascript:doDisplay14();">
							<li>&nbsp; 채팅 시작하기</li>
							</a>
						</div>
						<div id="past_conver_see">
							<li>&nbsp;&nbsp;차단 또는 탈퇴한 멤버와의 과거 대화 보기</li>
						</div>
					</div>
				</ul>
			</div>
<!-- chatframe 끝나는 부분 -->

<!-- chatstart 시작 부분 -->
			<div id="chatstart">
				<div class="chatstart_frame">
					<header class="chatstart_header">
					<div class="chatstart_fontA">
						 채팅 시작하기
					</div>
					<img src="images/exit_white.png" class="close_btn3" width="35"/>
					</header>
					<section class="chatstart_section">
					<div class="chatstart_frameA">
						<div>
							<div class="left_div">
								<div class="gray_title">
									 이름
								</div>
								<input class="chatstart_input" type="text" placeholder="검색어를 입력하세요.">
							</div>
							<div class="left_div" style="border-radius: 15px">
								<div class="gray_title">
									 부서
								</div>
								<button class="child_span"><span class="chatstart_span">전체</span></button>
							</div>
							<div class="left_div">
								<div class="gray_title">
									 직책
								</div>
								<button class="child_span"><span class="chatstart_span">전체</span></button>
							</div>
							<div class="left_div">
								<div class="gray_title">
									 권한
								</div>
								<button class="child_span"><span class="chatstart_span">전체</span></button>
							</div>
							<div class="chatstart_fontB">
								 검색조건 초기화
							</div>
						</div>
					</div>
					<div class="chatstart_frameB">
						<div>
							 팀 멤버
						</div>
						<div class="chatstart_frameC">
							<div class="chatstart_frameD">
								<div class="chatstart_frameE">
									<img src="images/mp_teamer_logo.png" class="chatstart_imageA"/>
									<div class="chatstart_fontC">
										 TEAMER
									</div>
								</div>
							</div>
							
							<!-- 파추호  -->
					<!-- 주호 채팅 멤버 리스트 띄우기 -->		
				<%
                     ArrayList<chat_memVO> ch_mem_list = new ArrayList<chat_memVO>();
                     sql="SELECT P.P_EMAIL, P.P_IMAGE, P.P_POSITION, P.P_DEPARTMENT, M.MEM_NAME FROM PROFILE P, MEMBERS M WHERE P.P_EMAIL = M.MEM_EMAIL AND P_T_INDEX = ? AND M.MEM_EMAIL <> ?";
                  
                     pstmt=conn.prepareStatement(sql);
                     pstmt.setString(1, t_index);
                     pstmt.setString(2, loginEmail);
                     
                     rs=pstmt.executeQuery();
                     String chat_mem_email_arr[]=null;
                     
                     while(rs.next()){
                        String mem_email_j = rs.getString("p_email");
                        String p_image_j = rs.getString("p_image");
                        String mem_name_j = rs.getString("mem_name");
                        String p_position_j = rs.getString("p_position");
                        String p_department_j = rs.getString("p_department");
                        ch_mem_list.add(new chat_memVO(mem_email_j,p_image_j,mem_name_j,p_position_j,p_department_j));
                     }
                        /* ch_mem_list와 내가 로그인한 이메일을 비교함 */
                        /* for(int i=0;i<ch_mem_list.size()-1;i++){
                           chat_mem_email_arr[i]=mem_email;
                        } */
                        
                  %>
                  <script>
                  /* $("#chatstart").on("click",function(){
                     $("#chatstart").css({"display":"block"});
                     alert("왜 안돼");
                  }); */
                  
                  //이후에 꺼짐
                  </script>
                  <%
                     for(chat_memVO cmvo  :ch_mem_list){
                  %>

                     <div id="chatstart_frameF" class="chatstart_frameF" data_image="<%=cmvo.getP_image() %>" data_email="<%=cmvo.getMem_email()%>" data_name="<%=cmvo.getMem_name()%>" data_position="<%=cmvo.getP_position()%>" data_department="<%=cmvo.getP_department()%>">
                        <div class="chatstart_frameG">
                           <img src="<%=cmvo.getP_image() %>" class="chatstart_imageB"/>
                           <div class="chatstart_frameH">
                              <div>
                                 <div class="chatstart_frameI">
                                     <%=cmvo.getMem_name() %>&nbsp;
                                 </div>
                                 <div class="chatstart_frameJ">
                                     <%=cmvo.getP_position() %>
                                 </div>
                                 <div style="clear: both;">
                                 </div>
                              </div>
                              <div class="chatstart_frameK">
                                  <%=cmvo.getP_department() %>
                              </div>
                           </div>
                        </div>
                        <div class="chatstart_fontD">
                            정회원
                        </div>
                     </div>
                  
                  
                  <%
                     } 
                  
                  %>
					<!-- 주호 채팅 멤버 리스트 띄우기 끝-->	
					
					
					<!-- 멤버 클릭 시 밑에 div 띄우기 주호 -->
				<script>
                  $(".chatstart_frameF").off("click").on("click",function(){
                        /*attr = 속성값을 가지고옴*/
                        
                        $(this).hide();
                        var chat_mem_name = $(this).attr("data_name");
                        var chat_email =  $(this).attr("data_email");
                        var chat_position = $(this).attr("data_position");
                        var chat_department= $(this).attr("data_department");
                        var chat_image=$(this).attr("data_image");
                        
                              str=
                                 '<div id="cc_select_box" class="cc_select_box">'+
                                 '   <div id="cc_select_name" image="'+chat_image+'"email="' + chat_email + '" position="'+ chat_position+'" department="'+chat_department+'">'+
                                       chat_mem_name+
                                 '   </div>'+
                                 '   <span class="cc_select_box_exit">x</span>'+
                                 '</div>'
                                 $(".chatstart_frameB").html($(".chatstart_frameB").html() + str);
                                 
                              /* $(".chatstart_frameB").append(str); */
                              
                        //선택된 멤버 보이게 하기
                        /* $("#cc_select_mem").css({"display":"block"}) ; */
                        /* alert("숨기기 전");
                        $(this).css({"display":"none"});
                        alert("숨기기 후"); */
               /*          $(this).css({"display":"none"}); */
                        /* $("#chatstart").css({"display":"block"});    */
                        
                        
                  });
                  //x눌렀을 때 
                  $(".cc_select_box_exit").off("click").on("click",function(){
                     /* $(".chatstart_frameF").off("click"); */
                     //$(this).parent().hide();   // 이거 대신에 "$(this).parent().remove()"로 대체.
                     /* $("#cc_select_mem").css({"display":"none"}); */
                     /* $("#chatstart").css({"display":"block"}); */
                     
                     //클릭한 값의 이름 값
                     var cc_name_mem2=$(this).parent().find("#cc_select_name").text();
                     var cc_position_mem2=$(this).parent().find("#cc_select_name").attr("position");
                     var cc_department_mem2=$(this).parent().find("#cc_select_name").attr("department");
                     var cc_email_mem2=$(this).parent().find("#cc_select_name").attr("email");
                     var cc_image_mem2=$(this).parent().find("#cc_select_name").attr("image");
                     /* var cc_position_mem2 = $(this).parent().find(".chatstart_frameJ").text();
                     var cc_department_mem2 = $(this).parent().find(".chatstart_frameK").text(); */
                     /* alert(cc_name_mem2);  */
                     
                     
                     //cecece
                     
                     str='<div id="chatstart_frameF" class="chatstart_frameF" data_email="'+'chat_email'+'" data_name ="'+ cc_name_mem2 +'" data_position ="'+cc_position_mem2+'" data_department ="'+cc_department_mem2+'">'+
                     '<div class="chatstart_frameG">'+
                     '<img src="'+cc_image_mem2+'" class="chatstart_imageB"/>'+
                     '<div class="chatstart_frameH">'+
                        '<div>'+
                           '<div class="chatstart_frameI">'+
                           cc_name_mem2+
                           '</div>'+
                           '<div class="chatstart_frameJ">'+
                           cc_position_mem2+
                           '</div>'+
                           '<div style="clear: both;">'+
                           '</div>'+
                           '</div>'+
                           '<div class="chatstart_frameK">'+   
                           cc_department_mem2+
                           '</div>'+
                        '</div>'+
                     '</div>'+
                     '<div class="chatstart_fontD">'+
                        '정회원'+
                     '</div>'+
                     '</div>'
                     
                     $(".chatstart_frameC").html($(".chatstart_frameC").html() + str);
                     
                     $(this).parent().remove();
                  });
                  

                  </script>
					<!-- 멤버 클릭 시 밑에 div 띄우기 주호 끝-->
					
						</div>
					<div id="cc_select_mem"> 
                     	<div id="cc_select_text">선택된 멤버</div>
                  	</div>
						
					</div>
					</section>
					<footer class="chatstart_footer">
					<div class="chatstart_frameR">
						<div class="chatstart_close">
							 닫기
						</div>
						<div id="chatstart_fontF">
							<input type = "hidden" class = "t_id_park" value = "<%=t_index%>">
							<span>대화 시작하기</span>
						</div>
					</div>
					</footer>
				</div>
			</div>
<!-- chatstart 끝나는 부분 -->

<!-- offline_off 시작 부분 -->
			<div id="offline_off" style="display: none;">
				<div class="offline_off_div">
					<div class="big_div" id="big_div_style">
						<div class="set_missed">
							 부재중 설정
						</div>
						<div class="exit2_div">
							<img src="images/exit_2.png" class="close_btn4"/>
						</div>
					</div>
					<div class="big_div big_div_style2">
						<div class="big_div_style3">
							<div>
								<div class="set_missed2">
									 부재중 설정
								</div>
								<div class="switch_but_div">
									<a href="javascript:doDisplay16();"><img src="images/switch_but.png"/></a>
								</div>
								<div style="clear: both;">
								</div>
							</div>
							<div class="miseed_explain">
								<span class="miseed_explain_span">부재중 설정을 하시면 다른 사람에게 현재<br>
								 부재중임을 알려주고 모바일의 푸시 알림을 끌<br>
								 수 있습니다.</span>
							</div>
						</div>
						<div class="offline1_div">
							<img src="images/offline1.png" class="offline1_img" width="240px"; height="130px"/>
						</div>
					</div>
					<div class="big_div big_div_style4">
						<div class="big_div_cancel">
							<div class="close_btn4 close_btn4_style">
								 취소
							</div>
							<div class="confirm">
								 확인
							</div>
						</div>
					</div>
				</div>
			</div>
<!-- offline_off 끝나는 부분 -->

<!-- offline_on 시작 부분 -->
			<div id="offline_on" style="display: none;">
				<div class="offline_onA">
					<div class="offline_onB">
						<div class="offline_onC">
							 부재중 설정
						</div>
						<div class="offline_onD">
							<img src="images/exit_2.png"/>
						</div>
					</div>
					<div class="offline_onE">
						<div class="offline_onF">
							<div>
								<div class="offline_onG">
									 부재중 설정
								</div>
								<div class="offline_onH">
									<a href="javascript:doDisplay17();"><img src="images/offlinepage2.png"/></a>
									<!--스윗치 버튼-->
								</div>
								<div style="clear: both;">
								</div>
							</div>
							<div class="offline_onI">
								<span class="offline_on_spanA">부재중 설정을 하시면 다른 사람에게 현재<br>
								 부재중임을 알려주고 모바일의 푸시 알림을 끌<br>
								 수 있습니다.</span>
							</div>
						</div>
						<div class="offline_onJ">
							<img src="images/offline1.png" width="240px" height="130px" class="offline_on_imgA"/>
						</div>
					</div>
					<div class="offline_onK">
						<div class="offline_onL">
							<span class="offline_on_spanB">기간</span>
							<p class="offline_on_pA">
								 선택한 시작일의 0시부터 종료일의 24시까지로<br/> 설정됩니다. (최대 3년)
							</p>
						</div>
						<!--기간단락에 왼쪽 div 닫는태그-->
						<div class="offline_onM">
							<div class="offline_onN">
								<div class="offline_onO">
									 시작일
								</div>
								<div class="offline_onP">
									 2021/11/25
								</div>
							</div>
							<div class="offline_onQ">
								<div class="offline_onR">
									 종료일
								</div>
								<div class="offline_onS">
									 2021/11/25
								</div>
								<div class="offline_onT">
									 총 1일
								</div>
							</div>
						</div>
						<!--기간단락에 오른쪽 div 닫는태그-->
					</div>
					<div class="offline_onU">
						<div class="offline_onV">
							<div class="offline_onW">
								 모바일 푸시 알림 설정
							</div>
							<img src="images/switch_but_page2.png" class="offline_onX"/>
							<div style="clear: both;">
							</div>
						</div>
						<span class="offline_onY">설정을 OFF시 설정 기간 동안 사용 중인 모바일로 푸시 알림을 보내지 않습니다.<br/>
						ON시 기존 모바일 푸시 설정이 유지됩니다.</span>
					</div>
					<div class="offline_onZ">
						<div class="offline_on_option">
							 안내 메시지 (옵션)
						</div>
						<div>
							<div class="offline_on_textA">
								 문구 작성 시 프로필 상태 메시지를 통해 다른<br/> 사용자들에게 안내됩니다.
							</div>
							<textarea class="offline_on_textarea" cols="35" rows="4"></textarea>
						</div>
					</div>
					<div class="offline_on_frame">
						<div class="offline_on_check">
							<div class="offline_on_cancle">
								 취소
							</div>
							<div class="offline_on_ok">
								 확인
							</div>
						</div>
					</div>
				</div>
			</div>
<!-- offline_on 끝나는 부분 -->

<!-- invite_mem 시작 부분 -->
			<div id="invite_mem" style="display: none;">
				<div id="im_invite_mem_main_div">
					<header id="im_header">
					<div id="im_invite_mem_text">
						 멤버 초대하기
					</div>
					<img src="images/exit_white.png" width="35" id="im_close_but" class="close_btn3"/>
					</header>
					<section id="im_main_section">
					<div id="in_main_section_left">
						<div>
							<div class="left_div">
								<div class="gray_title">
									 이름
								</div>
								<input type="text" placeholder="검색어를 입력하세요." id="im_name_search">
							</div>
							<div class="left_div" style="border-radius: 15px">
								<div class="gray_title">
									 부서
								</div>
								<button class="child_span"><span class="im_department_but">전체</span></button>
							</div>
							<div class="left_div">
								<div class="gray_title">
									 직책
								</div>
								<button class="child_span"><span class="im_department_but">전체</span></button>
							</div>
							<div class="left_div">
								<div class="gray_title">
									 권한
								</div>
								<button class="child_span"><span class="im_department_but">전체</span></button>
							</div>
							<div id="im_search_reset">
								 검색조건 초기화
							</div>
						</div>
					</div>
					<div id="im_main_section_right">
						<div>
							 팀 멤버
						</div>
						<div id="im_center_div_box">
							<p id="im_center_box_text1">
								 이 토픽에는 참여 가능한 모든 멤버들이 참여<br/> 중입니다
							</p>
							<p id="im_center_box_text2">
								 지금 바로 코리에 새로운 멤버를 초대해보세요
							</p>
							<div id="im_center_box_text3">
								<span id="im_center_box_text4">팀에 멤버 초대하기</span>
							</div>
						</div>
					</div>
					</section>
					<footer id="im_footer">
					<div id="im_footer_bottom_box">
						<div id="im_bottom_box_close_text" class="close_btn4">
							 닫기
						</div>
						<div id="im_footer_bottom_invite">
							<span>초대하기</span>
						</div>
					</div>
					</footer>
				</div>
			</div>
<!-- invte_mem 끝나는 부분 -->

<!-- topicmenu 시작 부분 -->
			<div id="topicmenu" style="display: none;">
				<ul id="tm_tipic_ul">
					<div id="tm_tipic_ul_div">
						<div>
							<a href="javascript:doDisplay21();">
							<li>&nbsp; 새로운 토픽 생성하기</li>
							</a>
						</div>
						<div id="tm_tipic_ul_div2">
							<a href="javascript:doDisplay22();">
							<li>&nbsp;&nbsp;참여 가능한 토픽 보기</li>
							</a>
						</div>
					</div>
				</ul>
			</div>
<!-- topicmenu 끝나는 부분 -->

<!-- createTopic 시작하는 부분 -->
	<input type = "hidden" name = "team_index" value = "<%=t_index%>">
				<div id="createTopic" style="display: none;">
				<div id="ct_createtopic_div">
					<div id="ct_newtopic_Text">
						 새 토픽 생성 <img src="images/x2.png" id="ct_newtopic_text_img" class="close_btn3"/>
						<!-- ------이름------ -->
						<div>
							<div>
								<div id="ct_newtopic_name_text">
									 이름 <!-- <img src="images/*.png" id="ct_newtopic_name_img"> -->
								</div>
								<div>
									<input type="text" name="topic_name" placeholder="토픽이름을 입력하세요." id="ct_search_topic"/>
								</div>
								<div id="ct_search_topic_bottom_div">
									<span id="ct_search_topic_min">0</span>
									<span id="ct_search_topic_max"> / 60</span>
								</div>
							</div>
						</div>
						<!-- ------토픽 설명(옵션)------ -->
						<div id="ct_big_bottom_div">
							<div>
								<div id="ct_bottom_div_text1">
									 공개 여부 <img src="images/*.png" id="ct_bottom_img">
									<div id="ct_big_bottom_div_child">
										<div>
											 공개 여부 설정은 이후에 변경이
										</div>
										<div>
											 불가능합니다.
										</div>
									</div>
								</div>
							</div>
							<!-- --------비공개/공개-------- -->
							<div id="ct_open_notop_big_div">
								<div id="ct_open_notop_div_child">
									<div id="ct_notopen_div">
										<input id = "topic_not_public" type="radio" name="t_public" value="n"/> 비공개
									</div>
									<div id="ct_open_div">
										<input id = "topic_public" type="radio" name="t_public" value="y" checked/> 공개
									</div>
								</div>
							</div>
							<!-- -------취소----- -->
							<div id="ct_bottom_cancle_div">
								<div id="ct_bottom_cancle_div_text">
									 닫기
								</div>
								<!-- -------완료------  -->
								<div id="ct_bottom_construct_div_text">
									 <input type="submit" value="생성하기"/>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
<!-- createTopic 끝나는 부분 -->

<!-- topic_search 시작 부분 -->
			<div id="topic_search">
				<div id="tl_main">
					<header id="tl_header">
					<div id="tl_list_text">
						토픽 목록
					</div>
					<img src="images/exit_2.png" width="30" id="tl_exit"/>
					</header>
					<section id="tl_section1">
					<img src="images/reading_glasses.png" id="tl_search_img"/>
					<input type="text" placeholder="토픽 이름을 검색하세요" id="tl_search_input"/>
					</section>
					<section id="tl_section2">
					<div id="topic1">
						<div id="topic1_left">
							<img src="images/topic_list.png" class="topic1_float"/>
							<div class="topic1_float" id="topic1_name">
								신경쓰지마토픽
							</div>
						</div>
						<div id="topic1_right">
							<div class="topic1_time">
								2021/11/11 &nbsp; 12:41 PM
							</div>
							<div class="topic1_membercount">
								2명
							</div>
						</div>
					</div>
					<div id="topic2">
						<div id="topic2_left">
							<img src="images/topic_list.png" class="topic1_float"/>
							<div class="topic1_float" id="topic2_name">
								테스트 토픽입니다
							</div>
						</div>
						<div id="topic2_right">
							<div class="topic1_time">
								2021/11/11 &nbsp; 12:40 PM
							</div>
							<div class="topic1_membercount">
								1명
							</div>
						</div>
					</div>
					</section>
					<footer id="tl_footer">
					<div id="footer_div1">
						<span>닫기</span>
					</div>
					<div id="footer_div2">
						<span>새 토픽 생성</span>
					</div>
					</footer>
				</div>
			</div>
<!-- topic_search 끝나는 부분 -->

<!-- seemore 시작하는 부분 -->
			<div id="seemore" style="display: none;">
				<div class="seemore_div">
					<!-- -----파일 보기-------- -->
					<div class="file_div">
						<div class="file_div_style">
							<div style="float: left">
								<img src="images/topic_in_page.png" class="page2_style"/>
							</div>
							<a href="javascript:doDisplay5();" class="see_file"> 파일 보기 </a>
						</div>
					</div>
					<!-- -----정보변경하기-------- -->
					<div class="set_information">
						<div class="set_information_style">
							<div style="float:left">
								<img src="images/topic_in_change.png" class="change_img_style"/>
							</div>
							<a href="javascript:doDisplay26();" class="set_information_a">정보 변경하기</a>
						</div>
					</div>
					<!-- -----토픽 삭제하기-------- -->
					<a href="javascript:doDisplay31();">
					<div class="delete_topic_div">
						<div class="delete_topic_style">
							<div style="float: left">
								<img src="images/topic_in_delete.png" class="trash_img"/>
							</div>
							 토픽 삭제하기
						</div>
					</div>
					</a>
					<!--토픽 나가기-->
					<a href="javascript:doDisplay32()" class="leaveTopic_a">
					<div class="leaveTopic_div">
						<div class="leaveTopic_style">
							<div style="float: left">
								<img src="images/topic_in_getout.png" class="leaveTopic_img"/>
							</div>
							 토픽 나가기
						</div>
					</div>
					</a>
					<!--마지막-->
				</div>
			</div>
<!-- seemore 끝나는 부분 -->

<!-- folder_seemore 시작하는 부분 -->
			<div id="folder_seemore" style="display: none;">
				<div id="fs_big_div">
					<ul id="fs_big_div_ul">
						<a href="javascript:doDisplay21();">
						<li>이 폴더에 토픽 생성하기</li>
						</a>
						<a href="#" class="a_folder_change_name">
						<li>폴더 이름 변경</li>
						</a>
						<a href="javascript:doDisplay27();">
						<li id = "folder_delete_text">폴더 삭제하기</li>
						</a>
					</ul>
				</div>
			</div>
<!-- folder_seemore 끝나는 부분 -->
<!-- changeTopic 시작하는 부분 -->
			<div id="changeTopic" style="display: none;">
				<div>
					<div>
						<div id="changeTopic_banner">
							<div id="change_t_text1">
								 토픽 정보 변경하기
							</div>
							<div id="change_t_img_div">
								<img src="images/x2.png" id="change_t_img">
							</div>
						</div>
						<div id="div01">
							<div id="div02">
								 챗 뷰 / 비공개 토픽
							</div>
						</div>
						
<!-- gozoo -->
<% 
	String sql_update = "SELECT * FROM TOPIC T ,MEMBERS M WHERE T.T_MEMBER = M.MEM_EMAIL AND T.T_ID = ?";
	PreparedStatement pstmt_update = conn.prepareStatement(sql_update);
	pstmt_update.setString(1, topic_id);
	ResultSet rs_update = pstmt_update.executeQuery();
	String t_name_update = "";
	String t_member_update = "";
	String t_member_email_update = "";
	String topic_id_update = "";
		while(rs_update.next()){
			t_name_update = rs_update.getString("T_NAME");
			t_member_update = rs_update.getString("MEM_NAME");
			t_member_email_update = rs_update.getString("T_MEMBER");
			topic_id_update = rs_update.getString("T_ID");
		};
%>

	<script type="text/javascript">
		// gozoo
		$(function(){
			$("#div_complete").click(function(){
					var update_topicName = $(".update_topicName").val();
					var loginEmail_update = $(".loginEmail_update").val();
					var t_member_email_update = $(".t_member_email_update").val();
					var t_domain_update = $(".t_domain_update").val();
					var topic_id_update = $(".topic_id_update").val();
					
					/* alert("현재 로그인 이메일 : " + loginEmail_update);
					alert("토픽 생성자 이메일 : " + t_member_email_update)
					alert(update_topicName + "으로 바껴야합니다. "); 
					alert("현재 팀 도메인 : " + t_domain_update); 
					alert("현재 토픽의 인덱스 : " + topic_id_update);*/
					
					if(loginEmail_update === t_member_email_update){
						 /* alert("정보변경 권한이 있습니다.");  */
						
				 	 	   $.ajax({
								type: "post",
								url: "TopicUpdateServlet", 
								data: {
									   "update_topicName" : update_topicName,
									   "topic_id_update" : topic_id_update 
									   },
								datatype: "json",
								success: function(data) {  
									alert("UPDATE COMPLETE!!");
									 location.href = "mainpage.jsp?domain="+t_domain_update+"&owner="+loginEmail_update; 
								},
								error: function(request, status, error){ 
									alert("ERROR!");
								} 
							});   
						
						
					}else{
						alert("정보 변경 권한이 없습니다.");
					}
					
					// 이제 여기서 에이잭스먹여 (이름비교 로그인아이디 vs 토픽생성자)
					
			});
		});
	
 
	
	</script>

						<!-- ------이름------ -->
						<div id="div03name">
							<div>
								<div>
									 이름 <img src="images/*.png" id="change_t_name_img">
								</div>
								<div>
									<input type="text" name="id" class = "update_topicName" placeholder=<%=t_name_update %>>
								</div>
								<div style="clear:both;">
								</div>
								<div>
									<span class="change_t_font_color_5050">4</span>
									<span class="change_t_font_color_8080"> / 60</span>
								</div>
							</div>
						</div>
						<!-- ------토픽 설명(옵션)------ -->
						<div id="div04topicdesc">
							<div>
								<div>
									 토픽 설명 (옵션)
								</div>
								<div>
									<input type="text" name="id" placeholder="토픽에 대해 설명해주세요."/>
								</div>
								<div style="clear:both;">
								</div>
								<div>
									<span class="change_t_font_color_5050">0</span>
									<span class="change_t_font_color_8080"> / 300</span>
								</div>
							</div>
						</div>
						<!-- --------토픽 관리자-------- -->
						<div id="div05topicmanager">
							<div>
								<div>
									 토픽 관리자
								</div>
								<div id="change_t_topic_management_right_div">
									<span id="change_t_topic_mana_name"><%=t_member_update %></span>
									<input type = "hidden" class = "loginEmail_update" value = "<%=loginEmail%>">
									<input type = "hidden" class = "t_member_email_update" value = "<%=t_member_email_update%>">
									<input type = "hidden" class = "t_domain_update" value = "<%=domain%>">
									<input type = "hidden" class = "topic_id_update" value = "<%=topic_id_update%>">
									<img src="images/아래키2.png"/>
								</div>
							</div>
							<div id="change_t_topic_bottom_div2">
								<!-- -------취소----- -->
								<div id="div_cancel">
									<div>
										 취소
									</div>
								</div>
								<!-- -------완료------  -->
								<div id="div_complete">
									<div>
										 완료
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
<!-- changeTopic 끝나는 부분 -->
<style>
	.like_img{
		cursor: pointer;
	}
</style>

<!-- message chat websocket -->
	
		<script>
		   $(function(){
			      $('.middle-part').scrollTop($('.middle-part')[0].scrollHeight);
			      
			      
			      // 좋아요 기능 gozoo
			      $(".like_img").click(function(){
			    	  var content = $(this).parent().parent().parent().find(".msg-item_text_span").text();
					   $(this).attr("src", "images/likesA.png");
			    	  /* document.getElementById("like_img").src = "./images/rose.jpg"; */
			      });
			      
			      
			   })
		
		var textarea = document.getElementById("messageWindow");
		var webSocket = new WebSocket('ws://210.114.10.27:9090/Teamer/broadcasting');
		var inputMessage = document.getElementById('inputMessage');
		webSocket.onerror = function(event) {
		    onError(event)
		};
		webSocket.onopen = function(event) {
		    onOpen(event)
		};
		webSocket.onmessage = function(event) {
		    onMessage(event)
		};

		function onMessage(event) {
		    var message = event.data.split("//.$/");
		    var sender = message[0];
		    var content = message[1];
		    var date = message[2];
		    var time = message[3];
		    var topic_id = message[4];
		    var profileUrl = message[5];
		    var name = message[6];
		    
		    var hours = time.substring(0,2);
		    var hoursNum = parseInt(hours);
		    <%-- 
		    <%
		    	sql = "select t_name from topic where t_id = ?";
		    	pstmt = conn.prepareStatement(sql);
		    	pstmt.setString(1, topic_id);
		    	rs = pstmt.executeQuery();
		    	String topic_name = "";
		    	if(rs.next()){
		    		topic_name = rs.getString("t_name");
		    	}
		    
		    %> --%>
		    var chatTopicName = $(".chatTopicName").val();
		    var chatTopicId = $("#topic_id").val();
		    /* alert(chatTopicId + "///" + topic_id); */
		    var chatMessageReceived = "<div style='clear:both;'></div>" 
	 			+ "<div class='whole_chat'><div class='msg-profile'>"
				+ " <div><img src='"+ profileUrl +"' alt='star image' style='width: 30px; height: 30px; float: left; border-radius:30px;'>"
				+ " </div>"
				+ " <div class='msg_text' style='float: left;'>"
				+ " <span class = 'msg-name'> " + name + "</span>"
				+ " <div class='msg-item_text "
				+ "'>"
				+ " <span class='msg-item_text_span'>"+ content +"</span>"
				+ " </div>"
				+ " </div>"
				+ " </div>"
				+ "<div class='like1'>"
				+ "<span><img src='images/like.png' alt='like image' class='like_img'>"
				+ "</span><span class = 'like1_font'> 좋아요 <span class='like_style'>"
				+ ""+((hoursNum < 12) ? time + " am" : time + " pm")+" </span></span>"
				+ "</div></div>";
			
		    if (content == "") {
		        
		    } else {
		        if (content.match("/")) {
		            if (content.match(("/" + $("#chat_id").val()))) {
		                var temp = content.replace("/" + $("#chat_id").val(), "(귓속말) :").split(":");
		                if (temp[1].trim() == "") {
		                } else {
		                    $("#messageWindow").html($("#messageWindow").html() + "<p class='whisper'>"
		                        + sender + content.replace("/" + $("#chat_id").val(), "(귓속말) :") + "</p>");
		                }
		            } 
		            else {
		            }
		        } else {
		            if (content.match("!")) {
		                $(".middle-part").html($(".middle-part").html()
		                    + chatMessageReceived);
		            } else {
		            	if((topic_id === chatTopicId)){
			                $(".middle-part").html($(".middle-part").html()
			                    + chatMessageReceived);
		            	 }
				    	
		            }
		        }
		    }
		    $('.middle-part').scrollTop($('.middle-part')[0].scrollHeight);
		}

		function onOpen(event) {
		    
		}
		function onError(event) {
		    alert(event.data);
		    alert('연결 실패');
		}

		function send() {
			//현재시간 같이 보내기
			var  Now = new Date();
			StrNow = String(Now);
			nowYear = String(Now.getFullYear());
			nowMon = String(Now.getMonth()+1);
			nowDay = String(Now.getDate());
			nowHours = String(Now.getHours());
			nowMinutes = String(Now.getMinutes());
			nowSeconds = String(Now.getSeconds());
	
			if(nowMon.length == 1) {
				nowMon = "0"+nowMon
			}
			if(nowDay.length == 1) {
				nowDay = "0"+nowDay
			}
			if(nowHours.length == 1) {
				nowHours = "0"+nowHours
			}
			if(nowMinutes.length == 1) {
				nowMinutes = "0"+nowMinutes
			}
			if(nowSeconds.length == 1) {
				nowSeconds = "0"+nowSeconds
			}
			var NowDate = nowYear +'-'+nowMon+'-'+nowDay; 
			var NowTime = nowHours + ':' + nowMinutes;
			console.log('NowDate', NowDate);
			/* $("#date").val(NowToday); */
			$("#date").val(NowDate);
			$("#time").val(NowTime);
			
			// 내가 보낸거 바로 뜨는 부분
			var chatMessageSend = "<div style='clear:both;'></div>" 
	 			+ "<div class='whole_chat'><div class='msg-profile'>"
				+ " <div><img src='"+ $("#profilePic").val() +"' alt='star image' style='width: 30px; height: 30px; float: left; border-radius:30px;'>"
				+ " </div>"
				+ " <div class='msg_text' style='float: left;'>"
				+ " <span class = 'msg-name'> " + $("#name").val() + "</span>"
				+ " <div class='msg-item_text "
				+ "me"
				+ "'>"
				+ " <span class='msg-item_text_span'>"+ $("#inputMessage").val() +"</span>"
				+ " </div>"
				+ " </div>"
				+ " </div>"
				+ "<div class='like1'>"
				+ "<span><img src='images/like.png' alt='like image' class='like_img'>"
				+ "</span><span class = 'like1_font'> 좋아요 <span class='like_style'>"
				+ ""+((nowHours<12) ? NowTime + " am" : NowTime + " pm")+ " </span></span>"
				+ "</div></div>";

		    
			//나도 오늘 머리 벌초하러가는날
		    if ($("#inputMessage").val() != "") {
		    	//if문 추가해서 해당 인풋의 t_id과 똑같은 middle-part에만 메세지 추가되게\
		    	//엔터 누르면 작동하는 함수
		    	var t_name = $(".notify_font").text();
		    	var chatTopicName = $(".chatTopicName").val();
		    	/* alert(t_name + "///" + chatTopicName); */
		    	<%
		    		String topicname = request.getParameter("chatTopicName");
		    		System.out.println(topicname + "토픽 이름입니다!!");
		    	%>
		    	if(t_name === chatTopicName){
			       $(".middle-part").html($(".middle-part").html()
			            + chatMessageSend); 
		    	}
		    }
		    $('.middle-part').scrollTop($('.middle-part')[0].scrollHeight);
		    webSocket.send($("#chat_id").val() + "//.$/" + $("#inputMessage").val()+"//.$/"+$("#date").eq(0).val()+"//.$/"
		    		+$("#time").eq(0).val()+"//.$/"+$("#topic_id").val()+"//.$/"+$("#profilePic").val()+"//.$/"+$("#name").val());
			$("#inputMessage").val("");
		}
		
		
//		     엔터키를 통해 send함
		function enterkey() {
		    if (window.event.keyCode == 13) {
		        send();
		    }
		}

</script>


<!-- dochange(공지사항) 시작 부분 -->        <%--YGYG --%>
			<div id="middle_chat_div" style="<%=styleMiddleChatDiv %>">
				<div class="middle_panel" style="right: 56px;">
					<div class="middle_panel_banner">
						<div class="middle_panel_banner_title" style="padding-top: 24px;">
							<div><a href="#"><img src="images/star.png" alt="star image" class="star_img"></a>
							</div>
							<div class="notify">
								<div style = "float: left;">
								<a href="#" class="notify_font"><%=chatTopicName %></a>
								<input type = "hidden" class = "chatTopicName" value = "<%=topicname%>">
								</div>
								<div>
								<img src="images/information.png" alt="information image" class="info_img"></div>
								</div>
							<!-- <div class="info_div">
							</div> -->
						</div>
						<div class="middle_panel_banner_title_right">
							<span>                      
							
							<img src="images/people_num.png" alt="star image"> <!-- DB화작업 필요! (2021/12/28메모) -->
							</span>
							<span><img src="images/plug.png" alt="star image">
							</span>
							<a href="javascript:doDisplay19();"><span><img src="images/invite.png"></span></a>
							<span><img src="images/notification.png" alt="star image">
							</span>
							<a href="javascript:doDisplay23();"><span><img src="images/settings.png" alt="star image"></span></a>
						</div>
					</div>
					<div class="middle-part">
					<%					
						
						String previouslyShownDate = "";
						String profilePic = "";
						String name = "";
						String writerEmail = "";
						for(i=0; i<=m_list.size()-1; i++) {
							System.out.println(m_list.get(i).getM_date()+" "+m_list.get(i).getM_time());
							if("".equals(previouslyShownDate) || previouslyShownDate.equals(m_list.get(i).getM_date())==false) {
								//System.out.println(m_list.get(i).getM_date());
								String year = m_list.get(i).getM_date().substring(0,4);
								String month = m_list.get(i).getM_date().substring(5,7);
								String date = m_list.get(i).getM_date().substring(8);
								
								Calendar cal = Calendar.getInstance();
								cal.setTime(new Date());     // 현재 날짜/시간으로 셋팅됨.
								int dayNumber = cal.get(Calendar.DAY_OF_WEEK); //날짜 계산해줌
								String dayStr = "";
								switch(dayNumber) {
								case 1: dayStr = "일"; break;
								case 2: dayStr = "월"; break;
								case 3: dayStr = "화"; break;
								case 4: dayStr = "수"; break;
								case 5: dayStr = "목"; break;
								case 6: dayStr = "금"; break;
								case 7: dayStr = "토"; break;
								}
								
								String chatDate = "<div style='clear:both;'></div>"
										+ "<div class='chat-messages'>"
										+ "	<div class='chat-messages_top'>"
										+ "		<div class='line' style='width: 100%; position: absolute; padding-top: 3px;'>"
										+ "			<hr class='hr_style'>"
										+ "		</div>"
										+ "		<span class='date' style='z-index: 1;'>"+year+"년 "+month+"월 "+date+"일 "+dayStr+"요일 </span>"
										+ "	</div>"
										+ "</div>";
								previouslyShownDate = m_list.get(i).getM_date();
					%>
								<%=chatDate %>
							 	<!-- 이 부분에 채팅 추가, 날짜 일치시켜서 -->
							 							 	
					<%
							}					
							 	
						 	//m_list.get(i).getM_date()
						 	//for문
						 	//date -> 2021-11-15
						  			
						 	name = ""; //이름
						 	profilePic = ""; //사진
						 	String content = m_list.get(i).getM_content(); //내용
						 	String hour = m_list.get(i).getM_time().substring(0,2); //시간
						 	String minutes = m_list.get(i).getM_time().substring(3,4);
						 	writerEmail = m_list.get(i).getM_w_email();
						 	
							if(minutes.length() == 1) {
								minutes = "0"+minutes;
							}
							
							String time = hour+":"+minutes;
						 	
						 	
						 	sql = "SELECT MEM_NAME FROM MEMBERS WHERE MEM_EMAIL = ?";
							PreparedStatement pstmt6 = conn.prepareStatement(sql);
							pstmt6.setString(1,m_list.get(i).getM_w_email());
							ResultSet rs9 = pstmt6.executeQuery();
							if(rs9.next()){
								name = rs9.getString("MEM_NAME"); 
							}
							
							sql = "SELECT P_IMAGE FROM PROFILE WHERE P_EMAIL = ? AND P_T_INDEX = ?"; 
							PreparedStatement pstmt7 = conn.prepareStatement(sql);
							pstmt7.setString(1,m_list.get(i).getM_w_email());
							pstmt7.setString(2,t_index);
							ResultSet rs10 = pstmt7.executeQuery();
							if(rs10.next()){
								profilePic = rs10.getString("P_IMAGE");
							}
							
							String hours = m_list.get(i).getM_time().substring(0,2);
							int hoursNum = Integer.parseInt(hours);
							
							
						 	String chatMessage = "<div style='clear:both;'></div>" 
						 			+ "<div class='whole_chat'><div class='msg-profile'>"
									+ " <div><img src='"+ profilePic+"' alt='star image' style='width: 30px; height: 30px; float: left; border-radius:30px;'>"
									+ " </div>"
									+ " <div class='msg_text' style='float: left;'>"
									+ " <span class = 'msg-name'> " + name + " </span>"
									+ " <div class='msg-item_text "
									+ (loginEmail.equals(writerEmail) ? "me" : "") 
									+ "'>"
									+ " <span class='msg-item_text_span'>"+ content +"</span>"
									+ " </div>"
									+ " </div>"
									+ " </div>"
									+ "<div class='like1'>"
									+ "<span><img src='images/like.png' alt='like image' class='like_img'>"
									+ "</span><span class = 'like1_font'> 좋아요 <span class='like_style'>"
									+ ""+( hoursNum < 12 ? m_list.get(i).getM_time() + " am" : m_list.get(i).getM_time() + " pm")+" </span></span>"
									+ "</div></div>";
					%>
							<%=chatMessage %>
							
					<% 						 	
						}
						
					%>
					<style>
						.msg-item_text.me {
							background-color: #ebf5f1;
						}
					</style>					
						<div style="clear:both;"></div>
						<div style="clear:both;"></div>
						<div style="clear:both;"></div>
						<div style="clear:both;"></div>
						<div style="clear:both;"></div>
						<div style="clear:both;"></div>
						<div style="clear:both;"></div>
						<div style="clear:both;"></div>
						<div style="clear:both;"></div>
						<div style="clear:both;"></div>
						
					</div>
					
					 <input type="hidden" value="<%=loginEmail %>" id="chat_id"/>  <!-- 작성자 이메일  -->
					
					<fieldset style = "position: absolute; top: 773px; width: 1578px;">
				        <div id="messageWindow"></div>
				        <br />
				        <div id = "chat-write">
				        	<div class = "message-input-wrapper">
				        		<div class = "message-input-body">
							        <input id="inputMessage" type="text" onkeyup="enterkey()" placeholder = "메세지를 입력하세요 (Shift + Enter로 줄바꿈이 가능합니다.)"/>
							        <input type = "hidden" id = "topic_id" value = "<%=topic_id%>"/>
							        <input type = "hidden" id = "profilePic" value = "<%=p_image_url%>"/>
							        <input type = "hidden" id = "name" value = "<%=profile_name%>"/>
							        <input type = "hidden" id = "login_email" value = "<%=loginEmail%>"/>
							        <input type = "hidden" id = "writer_email" value = "<%=writerEmail%>"/>
							        <input type="hidden" id = "date"  value = ""/>
							        <input type="hidden" id = "time"  value = ""/>
						        </div>
						        <div class = "message-input-footer">
						        <span class="chat_write_footer_emojis">
								<button class="dropdown-toggle sticker_panel_btn _stickerPanelBtn on" ng-class="{'on': isStickerOpen, 'ng-hide':!isShowStickerButton}" ng-click="onClickStickerButton($event)" ng-mousedown="onMousedownStickerButton($event)" ng-disabled="isDisabledMember" tooltip="스티커보내기" tooltip-placement="top">
								<i class="icon-ic-smile"><img src="images/emoji1.png" alt="star image"></i>
								</button>
								</span><span class="chat_write_footer_emojis">
								<button class="dropdown-toggle sticker_panel_btn _stickerPanelBtn on" ng-class="{'on': isStickerOpen, 'ng-hide':!isShowStickerButton}" ng-click="onClickStickerButton($event)" ng-mousedown="onMousedownStickerButton($event)" ng-disabled="isDisabledMember" tooltip="스티커보내기" tooltip-placement="top">
								<i class="icon-ic-smile"><img src="images/mention.png" alt="star image"></i>
								</button>
								</span><span class="chat_write_footer_emojis">
								<button class="dropdown-toggle sticker_panel_btn _stickerPanelBtn on" ng-class="{'on': isStickerOpen, 'ng-hide':!isShowStickerButton}" ng-click="onClickStickerButton($event)" ng-mousedown="onMousedownStickerButton($event)" ng-disabled="isDisabledMember" tooltip="스티커보내기" tooltip-placement="top">
								<i class="icon-ic-smile"><img src="images/file.png" alt="star image"></i>
								</button>
								</span><span class="chat_write_footer_emojis">
								<button class="dropdown-toggle sticker_panel_btn _stickerPanelBtn on" ng-class="{'on': isStickerOpen, 'ng-hide':!isShowStickerButton}" ng-click="onClickStickerButton($event)" ng-mousedown="onMousedownStickerButton($event)" ng-disabled="isDisabledMember" tooltip="스티커보내기" tooltip-placement="top">
								<i class="icon-ic-smile"><img src="images/text.png" alt="star image"></i>
								</button>
								</span><span class="icon-divider"></span><span class="chat_write_footer_emojis">
								<button class="dropdown-toggle sticker_panel_btn _stickerPanelBtn on" ng-class="{'on': isStickerOpen, 'ng-hide':!isShowStickerButton}" ng-click="onClickStickerButton($event)" ng-mousedown="onMousedownStickerButton($event)" ng-disabled="isDisabledMember" tooltip="스티커보내기" tooltip-placement="top">
								<i class="icon-ic-smile"><img src="images/list.png" alt="star image"></i>
								</button>
								</span><span class="chat_write_footer_emojis">
								<button class="dropdown-toggle sticker_panel_btn _stickerPanelBtn on" ng-class="{'on': isStickerOpen, 'ng-hide':!isShowStickerButton}" ng-click="onClickStickerButton($event)" ng-mousedown="onMousedownStickerButton($event)" ng-disabled="isDisabledMember" tooltip="스티커보내기" tooltip-placement="top">
								<i class="icon-ic-smile"><img src="images/vote.png" alt="star image"></i>
								</button>
								</span><span class="chat_write_footer_emojis">
								<button class="dropdown-toggle sticker_panel_btn _stickerPanelBtn on" ng-class="{'on': isStickerOpen, 'ng-hide':!isShowStickerButton}" ng-click="onClickStickerButton($event)" ng-mousedown="onMousedownStickerButton($event)" ng-disabled="isDisabledMember" tooltip="스티커보내기" tooltip-placement="top">
								<i class="icon-ic-smile"><img src="images/croppie.png" alt="star image"></i>
								</button>
								</span><span class="chat_write_footer_emojis">
								<button class="dropdown-toggle sticker_panel_btn _stickerPanelBtn on" ng-class="{'on': isStickerOpen, 'ng-hide':!isShowStickerButton}" ng-click="onClickStickerButton($event)" ng-mousedown="onMousedownStickerButton($event)" ng-disabled="isDisabledMember" tooltip="스티커보내기" tooltip-placement="top">
								<i class="icon-ic-smile"><img src="images/zoom.png" alt="star image"></i>
								</button>
								</span><span class="icon-divider"></span><span class="chat_write_footer_emojis">
								<button class="dropdown-toggle sticker_panel_btn _stickerPanelBtn on" ng-class="{'on': isStickerOpen, 'ng-hide':!isShowStickerButton}" ng-click="onClickStickerButton($event)" ng-mousedown="onMousedownStickerButton($event)" ng-disabled="isDisabledMember" tooltip="스티커보내기" tooltip-placement="top">
								<i class="icon-ic-smile"><img src="images/link.png" alt="star image"></i>
								</button>
								</span>
							        <input class = "message-input-submit btn btn-ok" type="submit" value="전송" onclick="send()" style = "border:0px; cursor: pointer;"  />
						        </div>
				    		</div>
				    	</div>
				    </fieldset>
				    
				</div>
			</div>
<!-- 공지사항 끝나는 부분 -->

<!-- folder_delete 시작 부분 -->
			<div id="folder_delete" style="display: none;">
				<div class="fdA">
					<div class="fdB">
						폴더를 정말 삭제하시겠습니까?<br/><br/>(폴더를 삭제해도 해당 폴더내 토픽들은 사라지지 않습니다.)
					</div>
					<div>
						<button class="fdC">취소</button>
						<button class="fdD">확인</button>
					</div>
				</div>
			</div>
<!-- folder_delete 끝나는 부분 -->

<!-- invite_newmember 시작 부분 -->
			<div id="invite_newmember">
				<div class="newmemberA">
					<div class="newmemberB">
						 멤버 초대하기 <img src="images/x2.png" class="newmember_imgA"/>
					</div>
					<div class="newmemberC">
						 새로운 멤버의 권한을 선택해 주세요.
						<div class="newmemberD">
							 권한이란?
						</div>
						<!-- -----정회원 초대----- -->
						<a href="javascript:doDisplay29();">
						<div id="vip_invite">
							<div class="newmemberE">
								 정회원 초대
							</div>
							<div class="newmemberF">
								 모든 공개 대화방에 접근이 가능한 멤버입니다.
							</div>
							<img src="images/right_arrow.png" class="newmember_imgB"/>
						</div>
						</a>
						<!-- -----준회원 초대----- -->
						<div class="newmemberG">
							<div class="newmemberH">
								 준회원 초대
							</div>
							<div class="newmemberI">
								 초대받은 대화방에만 접근이 가능한 멤버입니다.
							</div>
							<img src="images/right_arrow.png" class="newmember_imgC"/>
						</div>
					</div>
					<div class="newmemberJ">
						<div class="newmemberK">
							<div class="newmemberL">
								 닫기
							</div>
						</div>
					</div>
					<!-- ----마지막----- -->
				</div>
			</div>
<!-- invite_newmember 끝나는 부분 -->

<!-- invite_member_mail 시작 부분 -->
			<div id="invite_member_mail">
				<div class="invite_mailA">
					<div class="invite_mailB">
						 멤버 초대하기 <img src="images/x2.png" class="invite_mail_imgA"/>
						<div class="invite_mailC">
							<div>
								<img src="images/abcde.png" class="invite_mail_imgB"/>
								<div class="invite_mailD">
									 정회원 초대
								</div>
								<div class="invite_mailE">
									 이메일을 발송하여 초대할 수 있습니다.
								</div>
							</div>
						</div>
					</div>
					<!-- -----초대메일보내기----- -->
					<div class="invite_mailF">
						 완료
					</div>
					<div class="invite_mailG">
						<div>
							 공백 또는 쉼표로 구분된 여러 개의 이메일 또는 엑셀에서의 연락처가 있는 열을
						</div>
						<div>
							 붙여넣기하여 한번에 추가할 수 있습니다.
						</div>
						<div>
							 대규모 팀의 경우 <span class="invite_mailH">고객지원팀</span>으로 문의해주세요.
						</div>
					</div>
					<form action = "mail_action_invite.jsp">
					<input type="text" name="email" placeholder="이메일을 입력해주세요." class="invite_mailI"></input>
					<input type = "hidden" name = "t_index" value = "<%=t_index%>">
					<div class="invite_mailJ">
						<span class="invite_mailK">0</span> / 50
					</div>
					<!-- -----뒤로가기 ,초대 메일 보내기----- -->
					<div>
						<div class="invite_mailL">
							<img src="images/exit_2.png" class="invite_mail_imgC">
							<div class="invite_mailM">
								 뒤로가기
							</div>
							<div class="invite_mailN">
								<div class="invite_mailO">
									 <input type = "submit" name = "invitemem_email" value = "초대 메일 보내기"> 
								</div>
							</div>
						</div>
					</div>
					</form>
				</div>
			</div>
<!-- invite_member_mail 끝나는 부분 -->

<!-- profile_pic_change시작 부분 -->
			<div id="profile_pic_change" style="display: none;">
				<div class="profile_pic_div">
					<img src="images/exit_white.png" width="45" class="close_btn2" style="float: right; padding: 10px 10px;"/>
				</div>
				<div class="profile_img_div">
					<img src="<%=((p_image_url==null)?"https://i.ibb.co/5G1vGSt/image.jpg":p_image_url) %>" width="400" class="profile_img_style"/>
				</div>
				<div class="profile_pic_change2">
					<div style=" margin-left: 40%; text-align: center; height:100% ;">
						<div class="bottom_white_font bottom_white_font_style">
						
						<%-- <form action = "profile_img_action.jsp">
								<input type = "text" name = "profileImgUrl" placeholder = "사진 주소를 입력하세요">
								<input type = "hidden" name = "t_index" value = <%=t_index%>>
							</form> --%>
							
						<!-- ▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼ -->
						<style>
						.input-file-button{
						  padding: 6px 25px;
						  background-color:#FF6600;
						  border-radius: 4px;
						  color: white;
						  cursor: pointer;
						}
						</style>
						
						<form method = "post" action="out.jsp" enctype = "multipart/form-data">
							<input type = "hidden" name = "domain" value = "<%=domain%>">
							<input type = "hidden" name = "owner" value = "<%=owner%>">
							<input type = "hidden" name = "t_index" value = "<%=t_index%>">
							<!-- 버튼 부분 -->
							<label class = "input-file-button" for ="file_upload"> 파일 선택 </label>
							<input type = "file" name = "photo" id="file_upload" style = "display:none;"/>
							<input class = "input-file-button" type = "submit" value = "upload" style = "font-size:12px"/>
						</form>
						
						
						
						
						</div>
						<div class="bottom_white_font bottom_white_font_style">
							캐릭터 선택하기
						</div>
						<div class="bottom_white_font bottom_white_font_style2">
							초기화
						</div>
					</div>
				</div>
			</div>
<!-- profile_pic_change 끝나는 부분 -->


<script type="text/javascript">

$(function(){
// gozoo
	$(".close_btn_confirm").click(function(){
		/* alert("진짜 삭제하겠습니다"); */
		var team_index = $(".t_index").val();
		var topic_index = $(".to_index").val();
		var t_domain = $(".t_domain").val();
		var t_owner = $(".t_owner").val();
		var t_member_email_update = $(".t_member_email_update").val();
/*
		alert("팀도메인 : " + t_domain);
		alert("팀 오너 : " + t_owner);
 		alert("팀 인덱스 : " + team_index);
		alert("토픽 인덱스 : " + topic_index);
 		alert("토픽 관리자 : " + t_member_email_update)
 */		
 		if(t_member_email_update === t_owner){
 		
		  $.ajax({
				type: "post",
				url: "TopicDeleteServlet", 
				data: {
					   "topic_index" : topic_index,
					   },
				datatype: "json",
				success: function(data) {  
					alert("DELETE COMPLETE!!");
					 location.href = "mainpage.jsp?domain="+t_domain+"&owner="+t_owner; 
				},
				error: function(request, status, error){ 
					alert("에러!");
				} 
			}); 
 			
 			
 		}else{
 			 alert("U DONT HAVE ANY PERMISSION") 
 		}
 
		
	});
	
});
</script>






<!--topic_delete 시작 부분  -->
			<div id="topic_delete" style="display: none;">
				<div class="topic_delete_div">
					<div class="topic_real_delete">
						이 토픽을 정말 삭제하시겠습니까?
					</div>
					<div class="topic_filetab">
						토픽을 삭제하여도 주고 받은 파일은 파일탭에서 확인하실 수<br/> 있습니다
					</div>
					<div class="btn_div">
					 	<input type = "hidden" class = "to_index" value = "<%=topic_id%>"/>
						<input type = "hidden" class = "t_index" value = "<%=t_index%>">
						<input type = "hidden" class = "t_domain" value = "<%=domain%>">
						<input type = "hidden" class = "t_owner" value = "<%=loginEmail%>"/>
						<input type = "hidden" class = "t_member_email_update" value = "<%=t_member_email_update%>">
						
						<button class="close_btn close_btn_cancel">취소</button>
						<button class="close_btn_confirm">확인</button>
					</div>
				</div>
			</div>
<!--topic_delete 끝 부분  -->

<!-- topic_exit 시작 부분 -->
			<div id="topic_exit" style="display: none;">
				<div id="te_main_big_div">
					<div id="te_you_management">
						회원님은 이 토픽의 관리자입니다.<br/>
						<br/> 토픽에서 나가기 전에 다음 토픽 관리자를 지정하실 수 있습니다
					</div>
					<div>
						<button id="te_cancle_button">취소</button>
						<a href="javascript:doDisplay26();">
						<button id="te_yes_button">확인</button>
						</a>
					</div>
				</div>
			</div>
<!-- topic_exit 끝 부분 -->

		</div>

<!--가운데 div 닫는태그-->

<div id="right_div" >
	<div class="icon_div" id="rd_icon_div_img">
		<a href="javascript:doDisplay2();" class="icon_background"
			><i class="fas fa-bars icon_style"></i
		></a>
	</div>

	<div class="icon_div" id="rd_icon_div_img2">
		<a href="javascript:doDisplay3();" class="tooltip icon_background">
			<i class="fas fa-search icon_style"></i>
			<span class="tip">검색</span>
		</a>
	</div>

	<div class="icon_div" id="rd_icon_div_img3">
		<a href="javascript:doDisplay4();" class="tooltip icon_background">
			<i class="fas fa-clipboard-check icon_style"></i>
			<span class="tip">할일</span>
		</a>
	</div>

	<div class="icon_div" id="rd_icon_div_img4">
		<a href="javascript:doDisplay5();" class="tooltip icon_background">
			<i class="fas fa-file icon_style"></i>
			<span class="tip">파일<span>
		</a>
	</div>

	<div class="icon_div" id="rd_icon_div_img5">
		<a href="javascript:doDisplay6();" class="tooltip icon_background">
			<i class="fas fa-vote-yea icon_style"></i>
			<span class="tip">투표<span>
		</a>
	</div>

	<div class="icon_div" id="rd_icon_div_img6">
		<a href="javascript:doDisplay7();" class="tooltip icon_background">
			<i class="fas fa-sitemap icon_style"></i>
			<span class="tip">조직도<span>
		</a>
	</div>

	<div class="icon_div">
		<a href="drivemain.jsp" class="tooltip icon_background">
			<i class="fas fa-hdd icon_style"></i>
			<span class="tip">드라이브<span>
		</a>
	</div>

	<div class="icon_div">
		<a href="jandiconnect.jsp" class="tooltip icon_background">
			<i class="fas fa-plug icon_style"></i>
			<span class="tip">티머 커넥트<span>
		</a>
	</div>

	<div style="padding-top: 250px">
		<div class="icon_div" id="bookmark_img_but_a">
			<a href="javascript:doDisplay10();" class="tooltip icon_background">
				<i class="fas fa-star icon_style"></i>
				<span class="tip">즐겨찾기<span>
			</a>
		</div>

		<div class="icon_div" id="mention_img_but_a">
			<a href="javascript:doDisplay11();" class="tooltip icon_background">
				<i class="fas fa-at icon_style"></i>
				<span class="tip">멘션<span>
			</a>
		</div>

		<div style="clear: both"></div>
		<a href="javascript:doDisplay12();" class="tooltip" id="profile_logo_img2">
			<img src="<%=((p_image_url==null)?"https://i.ibb.co/5G1vGSt/image.jpg":p_image_url) %>" class="seeprofile_img" width="50px" height="50px" style = "border-radius: 70%;" />
			<span class="tip">프로필 보기</span>
		</a>
	</div>
</div>

		<!-- <div id="right_div">
			<a href="javascript:doDisplay2();"><img src="images/캡처1.PNG" width="50px" height="50px"/></a>
			<a href="javascript:doDisplay3();"><img src="images/캡처2.PNG" width="50px" height="50px"/></a>
			<a href="javascript:doDisplay4();"><img src="images/캡처3.PNG" width="50px" height="50px"/></a>
			<a href="javascript:doDisplay5();"><img src="images/캡처4.PNG" width="50px" height="50px"/></a>
			<a href="javascript:doDisplay6();"><img src="images/캡처5.PNG" width="50px" height="50px"/></a>
			<a href="javascript:doDisplay7();"><img src="images/캡처6.PNG" width="50px" height="50px"/></a>
			<a href="drivemain.html"><img src="images/캡처7.PNG" width="50px" height="50px"/></a>
			<a href="javascript:doDisplay9();"><img src="images/캡처8.PNG" width="50px" height="50px"/></a>
			<div style="padding-top: 340px;">
				<a href="javascript:doDisplay10();"><img src="images/캡처9.PNG" width="50px" height="50px"/></a>
				<a href="javascript:doDisplay11();"><img src="images/캡처10.PNG" width="50px" height="50px"/></a>
				<div style="clear: both;">
				</div>
				<a href="javascript:doDisplay12();"><img src="images/캡처11.PNG" width="50px" height="50px"></a>
			</div>
		</div> -->
		
		<!--오른쪽 div 닫는태그-->
	</div>
	<!-- main 세개 전부 감싸는 닫는태그  -->
</div>
<!--제일 큰 화면 div닫는태그 -->
<script>

	// 메인페이지 토픽옆 + 버튼 클릭시 효과
	$("#img_but_15pic").on("click", function() { 
		value = $("#topicmenu").css('display');   // block? none?
		if(value == 'block') {
			$("#topicmenu").fadeOut(500); 
		} else {
			hideAll();
			$("#topicmenu").fadeIn(500);
		}
	});
	// 메인페이지 토픽옆 + 버튼 클릭시 효과끝

	// 왼쪽맨위 티머로고 teamchange 버튼 효과
	$("#team_change_logo_right_butimg").on("click", function() { 
		value = $("#teamchange").css('display');   // block? none?
		if(value == 'block') {
			$("#teamchange").fadeOut(500); 
		} else{
			hideAll()
			$("#teamchange").fadeIn(500);
		}
		});


	// 왼쪽맨위 티머로고 teamchange 버튼 효과 끝

	// 저녁고르기 옆 버튼 효과
	$(document).on("click","#lu_folder_imgbut" ,function() { 
		f_index = $(this).attr("f_index");
		value = $("#folder_seemore").css('display');   // block? none?
		$("#folder_seemore").attr("f_index",f_index)
		if(value == 'block') {
			$("#folder_seemore").fadeOut(500); 
		} else{
		hideAll()
			$("#folder_seemore").fadeIn(500);
		}
		});
	// 저녁고르기 옆 버튼 효과 끝

	//채팅 옆 + 버튼효과
	$("#lu7_img_but").on("click", function() { 
		value = $("#chatframe").css('display');   // block? none?
		if(value == 'block') {
			$("#chatframe").fadeOut(500); 
		} else{
		hideAll()
			$("#chatframe").fadeIn(500);
		}
	});
	//채팅 옆 + 버튼효과 끝

	//오른쪽 메뉴 삼단바 버튼효과
	$("#rd_icon_div_img").on("click", function() { 
		value = $("#rightmenu").css('display');   // block? none?
		if(value == 'block') {
			$("#rightmenu").fadeOut(500); 
		} else{
		hideAll()
			$("#rightmenu").fadeIn(500);
		}
	});
	//오른쪽 메뉴 삼단바 버튼효과 끝

	//검색 버튼 효과
	$("#rd_icon_div_img2").on("click", function() { 
		value = $("#searchA").css('display');   
		if(value == 'block') {
			$("#searchA").fadeOut(500); 
		} else{
			hideAll()
			$("#searchA").fadeIn(500);
		}
	});
	//검색 버튼 효과 끝

	//할일 버튼 효과
	$("#rd_icon_div_img3").on("click", function() { 
		value = $("#todo").css('display');   
		if(value == 'block') {
			$("#todo").fadeOut(500); 
		} else{
		hideAll()
			$("#todo").fadeIn(500);
		}
	});
	//할일 버튼 효과끝

	//파일 버튼 효과
	$("#rd_icon_div_img4").on("click", function() { 
		value = $("#file_main").css('display');  
		if(value == 'block') {
			$("#file_main").fadeOut(500); 
		} else{
		hideAll()
			$("#file_main").fadeIn(500);
		}
	});
	//파일 버튼 효과 끝
	
	//투표 버튼효과
	$("#rd_icon_div_img5").on("click", function() { 
		value = $("#vote").css('display');   
		if(value == 'block') {
			$("#vote").fadeOut(500); 
		} else{
		hideAll()
			$("#vote").fadeIn(500);
		}
		});
	//투표 버튼효과 끝

	//조직도 버튼효과
	$("#rd_icon_div_img6").on("click", function() { 
		value = $("#orga").css('display');   
		if(value == 'block') {
			$("#orga").fadeOut(500); 
		} else{
		hideAll()
			$("#orga").fadeIn(500);
		}
	});
	//조직도 버튼효과끝
	
	//즐겨찾기 버튼효과
	$("#bookmark_img_but_a").on("click", function() { 
		value = $("#bookmark_main_div").css('display');   
		if(value == 'block') {
			$("#bookmark_main_div").fadeOut(500); 
		} else{
		hideAll()
			$("#bookmark_main_div").fadeIn(500);
		}
	});
	//즐겨찾기 버튼효과 끝


	//멘션 버튼 효과
	$("#mention_img_but_a").on("click", function() { 
		value = $("#mention_main_div").css('display');   
		if(value == 'block') {
			$("#mention_main_div").fadeOut(500); 
		} else{
		hideAll()
			$("#mention_main_div").fadeIn(500);
		}
	});
	//멘션 버튼 효과끝


	//프로필 버튼 효과
	$("#profile_logo_img2").on("click", function() { 
		value = $("#myDIV").css('display');   
		if(value == 'block') {
			$("#myDIV").fadeOut(500); 
		} else{
		hideAll()
			$("#myDIV").fadeIn(500);
		}
	});
	//프로필 버튼 효과끝


	$("#rm_new_member_invite_but").on("click", function() { 
		value = $("#invite_newmember").css('display');   
		if(value == 'block') {
			$("#invite_newmember").fadeOut(500); 
		} else{
		hideAll()
			$("#invite_newmember").fadeIn(500);
		}
	});



</script>
</body>
</html>