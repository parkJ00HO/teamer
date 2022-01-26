var arrRightPanelTagNames = ["teamchange","rightmenu","searchA","todo",
"file_main","vote","orga","drive","connect","bookmark_main_div","mention_main_div","myDIV",
"chatframe","chatstart","offline_off","offline_on","invite_mem","topicmenu","createTopic"
,"topic_search","seemore","folder_seemore","changeTopic","folder_delete","invite_newmember",
"invite_member_mail","profile_pic_change","topic_delete","topic_exit"];


function hideAll() {
    for(var i=0;i<arrRightPanelTagNames.length;i++){
        value = $("#"+arrRightPanelTagNames[i]).css('display');
        if(value=='block'){
            $("#"+arrRightPanelTagNames[i]).fadeOut(500);
            // for(var j=0;j<arrRightPanelTagNames.length;j++){
            //     if(arrRightPanelTagNames[j]==arrRightPanelTagNames[i]){
            //         $("#"+arrRightPanelTagNames[j]).css.display='block';
            //     }else{
            //         $("#"+arrRightPanelTagNames[j]).css.display='none';
            //     }
            // }
        }else{
            // $("#"+arrRightPanelTagNames[i]).fadeIn(500);
        }
    }
}


function getHide2(tagName){
    if(document.getElementById(tagName) == null)
        console.log("!!!! " + tagName + " is null !!!");
    document.getElementById(tagName).style.display = "none";
}
// dodisplay 1번 
function doDisplay1(){
    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");
    var con15A  = document.getElementById("offline_off");
    var con19 = document.getElementById("invite_mem");
    var con20 = document.getElementById("topicmenu");
    var con21 = document.getElementById("createTopic");
    var con22 = document.getElementById("topic_search");
    var con23 = document.getElementById("seemore");
    var con24 = document.getElementById("folder_seemore");
    var con26 = document.getElementById("changeTopic");
    var con27 = document.getElementById("folder_delete");
    var con28 = document.getElementById("invite_newmember");
    var con29 = document.getElementById("invite_member_mail");
    var con30 = document.getElementById("profile_pic_change");
    var con31 = document.getElementById("topic_delete");
    var con32 = document.getElementById("topic_exit");      


  con1.classList.add("emphasized");
  if(con1.style.display=='none'){
    con1.style.display = 'block';
    con2.style.display = 'none';
    con3.style.display = 'none';
    con4.style.display = 'none';
    con5.style.display = 'none';
    con6.style.display = 'none';
    con7.style.display = 'none';
    con8.style.display = 'none';
    con9.style.display = 'none';
    con10.style.display = 'none';
    con11.style.display = 'none';
    con12.style.display = 'none';
    con13.style.display = 'none';
    con14.style.display = 'none';
    con15.style.display = 'none';
    con16.style.display = 'none';
    con15A.style.display = 'none';
    con19.style.display = 'none';
    con20.style.display = 'none';
    con21.style.display = 'none';
    con22.style.display = 'none';
    con23.style.display = 'none';
    con24.style.display = 'none';
    con26.style.display = 'none';
    con27.style.display = 'none';
    con28.style.display = 'none';
    con29.style.display = 'none';
    con30.style.display = 'none';
    con31.style.display = 'none';
    con32.style.display = 'none';

  }//else{
    //   con1.style.display = 'none';
  //}
}

// dodisplay 2번
function doDisplay2() {
    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");
    var con15A  = document.getElementById("offline_off");
    var con19 = document.getElementById("invite_mem");
    var con20 = document.getElementById("topicmenu");
    var con21 = document.getElementById("createTopic");
    var con22 = document.getElementById("topic_search");
    var con23 = document.getElementById("seemore");
    var con24 = document.getElementById("folder_seemore");
    var con26 = document.getElementById("changeTopic");
    var con27 = document.getElementById("folder_delete");
    var con28 = document.getElementById("invite_newmember");
    var con29 = document.getElementById("invite_member_mail");
    var con30 = document.getElementById("profile_pic_change");
    var con31 = document.getElementById("topic_delete");
    var con32 = document.getElementById("topic_exit");     
    con2.classList.add("emphasized");
    
    if (con2.style.display == 'none') {
        con1.style.display = 'none';
        con2.style.display = 'block';
        con3.style.display = 'none';
        con4.style.display = 'none';
        con5.style.display = 'none';
        con6.style.display = 'none';
        con7.style.display = 'none';
        con8.style.display = 'none';
        con9.style.display = 'none';
        con10.style.display = 'none';
        con11.style.display = 'none';
        con12.style.display = 'none';
        con13.style.display = 'none';
        con14.style.display = 'none';
        con15.style.display = 'none';
        con16.style.display = 'none';
        con15A.style.display = 'none';
        con19.style.display = 'none';
        con20.style.display = 'none';
        con21.style.display = 'none';
        con22.style.display = 'none';
        con23.style.display = 'none';
        con24.style.display = 'none';
        con26.style.display = 'none';
        con27.style.display = 'none';
        con28.style.display = 'none';
        con29.style.display = 'none';
        con30.style.display = 'none';
        con31.style.display = 'none';
        con32.style.display = 'none';
     } //else {
    //     con2.style.display = 'none';
    // }
}

// dodisplay 3번
function doDisplay3(){
    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");
    var con15A  = document.getElementById("offline_off");
    var con19 = document.getElementById("invite_mem");
    var con20 = document.getElementById("topicmenu");
    var con21 = document.getElementById("createTopic");
    var con22 = document.getElementById("topic_search");
    var con23 = document.getElementById("seemore");
    var con24 = document.getElementById("folder_seemore");
    var con26 = document.getElementById("changeTopic");
    var con27 = document.getElementById("folder_delete");
    var con28 = document.getElementById("invite_newmember");
    var con29 = document.getElementById("invite_member_mail");
    var con30 = document.getElementById("profile_pic_change");
    var con31 = document.getElementById("topic_delete");
    var con32 = document.getElementById("topic_exit");      


    if(con3.style.display=='none'){
        con1.style.display = 'none';
        con2.style.display = 'none';
        con3.style.display = 'block';
        con4.style.display = 'none';
        con5.style.display = 'none';
        con6.style.display = 'none';
        con7.style.display = 'none';
        con8.style.display = 'none';
        con9.style.display = 'none';
        con10.style.display = 'none';
        con11.style.display = 'none';
        con12.style.display = 'none';
        con13.style.display = 'none';
        con14.style.display = 'none';
        con15.style.display = 'none';
        con16.style.display = 'none';
        con15A.style.display = 'none';
        con19.style.display = 'none';
        con20.style.display = 'none';
        con21.style.display = 'none';
        con22.style.display = 'none';
        con23.style.display = 'none';
        con24.style.display = 'none';
        con26.style.display = 'none';
        con27.style.display = 'none';
        con28.style.display = 'none';
        con29.style.display = 'none';
        con30.style.display = 'none';
        con31.style.display = 'none';
        con32.style.display = 'none';
    }//else{
//         con3.style.display = 'none';
//     }
 }

// // dodisplay 4번                
// function doDisplay4(){
//     var con1 = document.getElementById("teamchange");
//     var con2 = document.getElementById("rightmenu");
//     var con3 = document.getElementById("searchA");
//     var con4 = document.getElementById("todo");
//     var con5 = document.getElementById("file_main");
//     var con6 = document.getElementById("vote");
//     var con7 = document.getElementById("orga");
//     var con8 = document.getElementById("drive");
//     var con9 = document.getElementById("connect");
//     var con10 = document.getElementById("bookmark_main_div");
//     var con11 = document.getElementById("mention_main_div");
//     var con12 = document.getElementById("myDIV");
//     var con13 = document.getElementById("chatframe");
//     var con14 = document.getElementById("chatstart");
//     var con15 = document.getElementById("offline_off");
//     var con16 = document.getElementById("offline_on");
//     var con15A  = document.getElementById("offline_off");
//     var con19 = document.getElementById("invite_mem");
//     var con20 = document.getElementById("topicmenu");
//     var con21 = document.getElementById("createTopic");
//     var con22 = document.getElementById("topic_search");
//     var con23 = document.getElementById("seemore");
//     var con24 = document.getElementById("folder_seemore");
//     var con26 = document.getElementById("changeTopic");
//     var con27 = document.getElementById("folder_delete");
//     var con28 = document.getElementById("invite_newmember");
//     var con29 = document.getElementById("invite_member_mail");
//     var con30 = document.getElementById("profile_pic_change");
//     var con31 = document.getElementById("topic_delete");
//     var con32 = document.getElementById("topic_exit");      

//     if(con4.style.display=='none'){
//         con1.style.display = 'none';
//         con2.style.display = 'none';
//         con3.style.display = 'none';
//         con4.style.display = 'block';
//         con5.style.display = 'none';
//         con6.style.display = 'none';
//         con7.style.display = 'none';
//         con8.style.display = 'none';
//         con9.style.display = 'none';
//         con10.style.display = 'none';
//         con11.style.display = 'none';
//         con12.style.display = 'none';
//         con13.style.display = 'none';
//         con14.style.display = 'none';
//         con15.style.display = 'none';
//         con16.style.display = 'none';
//         con15A.style.display = 'none';
//         con19.style.display = 'none';
//         con20.style.display = 'none';
//         con21.style.display = 'none';
//         con22.style.display = 'none';
//         con23.style.display = 'none';
//         con24.style.display = 'none';
//         con26.style.display = 'none';
//         con27.style.display = 'none';
//         con28.style.display = 'none';
//         con29.style.display = 'none';
//         con30.style.display = 'none';
//         con31.style.display = 'none';
//         con32.style.display = 'none';
//     } else {
//         con4.style.display = 'none';
//     }
// }

// dodisplay 5번
function doDisplay5(){
    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");
    var con15A  = document.getElementById("offline_off");
    var con19 = document.getElementById("invite_mem");
    var con20 = document.getElementById("topicmenu");
    var con21 = document.getElementById("createTopic");
    var con22 = document.getElementById("topic_search");
    var con23 = document.getElementById("seemore");
    var con24 = document.getElementById("folder_seemore");
    var con26 = document.getElementById("changeTopic");
    var con27 = document.getElementById("folder_delete");
    var con28 = document.getElementById("invite_newmember");
    var con29 = document.getElementById("invite_member_mail");
    var con30 = document.getElementById("profile_pic_change");
    var con31 = document.getElementById("topic_delete");
    var con32 = document.getElementById("topic_exit");      

    if(con5.style.display=='none'){
        con1.style.display = 'none';
        con2.style.display = 'none';
        con3.style.display = 'none';
        con4.style.display = 'none';
        con5.style.display = 'block';
        con6.style.display = 'none';
        con7.style.display = 'none';
        con8.style.display = 'none';
        con9.style.display = 'none';
        con10.style.display = 'none';
        con11.style.display = 'none';
        con12.style.display = 'none';
        con13.style.display = 'none';
        con14.style.display = 'none';
        con15.style.display = 'none';
        con16.style.display = 'none';
        con15A.style.display = 'none';
        con19.style.display = 'none';
        con20.style.display = 'none';
        con21.style.display = 'none';
        con22.style.display = 'none';
        con23.style.display = 'none';
        con24.style.display = 'none';
        con26.style.display = 'none';
        con27.style.display = 'none';
        con28.style.display = 'none';
        con29.style.display = 'none';
        con30.style.display = 'none';
        con31.style.display = 'none';
        con32.style.display = 'none';
    }//else{
    //     con5.style.display = 'none';
    // }
}

// // dodisplay 6번
// function doDisplay6(){
//     var con1 = document.getElementById("teamchange");
//     var con2 = document.getElementById("rightmenu");
//     var con3 = document.getElementById("searchA");
//     var con4 = document.getElementById("todo");
//     var con5 = document.getElementById("file_main");
//     var con6 = document.getElementById("vote");
//     var con7 = document.getElementById("orga");
//     var con8 = document.getElementById("drive");
//     var con9 = document.getElementById("connect");
//     var con10 = document.getElementById("bookmark_main_div");
//     var con11 = document.getElementById("mention_main_div");
//     var con12 = document.getElementById("myDIV");
//     var con13 = document.getElementById("chatframe");
//     var con14 = document.getElementById("chatstart");
//     var con15 = document.getElementById("offline_off");
//     var con16 = document.getElementById("offline_on");
//     var con15A  = document.getElementById("offline_off");
//     var con19 = document.getElementById("invite_mem");
//     var con20 = document.getElementById("topicmenu");
//     var con21 = document.getElementById("createTopic");
//     var con22 = document.getElementById("topic_search");
//     var con23 = document.getElementById("seemore");
//     var con24 = document.getElementById("folder_seemore");
//     var con26 = document.getElementById("changeTopic");
//     var con27 = document.getElementById("folder_delete");
//     var con28 = document.getElementById("invite_newmember");
//     var con29 = document.getElementById("invite_member_mail");
//     var con30 = document.getElementById("profile_pic_change");
//     var con31 = document.getElementById("topic_delete");
//     var con32 = document.getElementById("topic_exit");      

//     if(con6.style.display=='none'){
//         con1.style.display = 'none';
//         con2.style.display = 'none';
//         con3.style.display = 'none';
//         con4.style.display = 'none';
//         con5.style.display = 'none';
//         con6.style.display = 'block';
//         con7.style.display = 'none';
//         con8.style.display = 'none';
//         con9.style.display = 'none';
//         con10.style.display = 'none';
//         con11.style.display = 'none';
//         con12.style.display = 'none';
//         con13.style.display = 'none';
//         con14.style.display = 'none';
//         con15.style.display = 'none';
//         con16.style.display = 'none';
//         con15A.style.display = 'none';
//         con19.style.display = 'none';
//         con20.style.display = 'none';
//         con21.style.display = 'none';
//         con22.style.display = 'none';
//         con23.style.display = 'none';
//         con24.style.display = 'none';
//         con26.style.display = 'none';
//         con27.style.display = 'none';
//         con28.style.display = 'none';
//         con29.style.display = 'none';
//         con30.style.display = 'none';
//         con31.style.display = 'none';
//         con32.style.display = 'none';
//     } else {
//         con6.style.display = 'none';
//     }
// }

// // dodisplay 7번
// function doDisplay7() {
//     var con1 = document.getElementById("teamchange");
//     var con2 = document.getElementById("rightmenu");
//     var con3 = document.getElementById("searchA");
//     var con4 = document.getElementById("todo");
//     var con5 = document.getElementById("file_main");
//     var con6 = document.getElementById("vote");
//     var con7 = document.getElementById("orga");
//     var con8 = document.getElementById("drive");
//     var con9 = document.getElementById("connect");
//     var con10 = document.getElementById("bookmark_main_div");
//     var con11 = document.getElementById("mention_main_div");
//     var con12 = document.getElementById("myDIV");
//     var con13 = document.getElementById("chatframe");
//     var con14 = document.getElementById("chatstart");
//     var con15 = document.getElementById("offline_off");
//     var con16 = document.getElementById("offline_on");
//     var con15A  = document.getElementById("offline_off");
//     var con19 = document.getElementById("invite_mem");
//     var con20 = document.getElementById("topicmenu");
//     var con21 = document.getElementById("createTopic");
//     var con22 = document.getElementById("topic_search");
//     var con23 = document.getElementById("seemore");
//     var con24 = document.getElementById("folder_seemore");
//     var con26 = document.getElementById("changeTopic");
//     var con27 = document.getElementById("folder_delete");
//     var con28 = document.getElementById("invite_newmember");
//     var con29 = document.getElementById("invite_member_mail");
//     var con30 = document.getElementById("profile_pic_change");
//     var con31 = document.getElementById("topic_delete");
//     var con32 = document.getElementById("topic_exit");     

//     if (con7.style.display == 'none') {
//         con1.style.display = 'none';
//         con2.style.display = 'none';
//         con3.style.display = 'none';
//         con4.style.display = 'none';
//         con5.style.display = 'none';
//         con6.style.display = 'none';
//         con7.style.display = 'block';
//         con8.style.display = 'none';
//         con9.style.display = 'none';
//         con10.style.display = 'none';
//         con11.style.display = 'none';
//         con12.style.display = 'none';
//         con13.style.display = 'none';
//         con14.style.display = 'none';
//         con15.style.display = 'none';
//         con16.style.display = 'none';
//         con15A.style.display = 'none';
//         con19.style.display = 'none';
//         con20.style.display = 'none';
//         con21.style.display = 'none';
//         con22.style.display = 'none';
//         con23.style.display = 'none';
//         con24.style.display = 'none';
//         con26.style.display = 'none';
//         con27.style.display = 'none';
//         con28.style.display = 'none';
//         con29.style.display = 'none';
//         con30.style.display = 'none';
//         con31.style.display = 'none';
//         con32.style.display = 'none';
//     } else {
//         con7.style.display = 'none';
//     }
// }

// dodisplay 8번
function doDisplay8(){
    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");
    var con15A  = document.getElementById("offline_off");
    var con19 = document.getElementById("invite_mem");
    var con20 = document.getElementById("topicmenu");
    var con21 = document.getElementById("createTopic");
    var con22 = document.getElementById("topic_search");
    var con23 = document.getElementById("seemore");
    var con24 = document.getElementById("folder_seemore");
    var con26 = document.getElementById("changeTopic");
    var con27 = document.getElementById("folder_delete");
    var con28 = document.getElementById("invite_newmember");
    var con29 = document.getElementById("invite_member_mail");
    var con30 = document.getElementById("profile_pic_change");
    var con31 = document.getElementById("topic_delete");
    var con32 = document.getElementById("topic_exit");    
    if(con8.style.display=='none'){
        con1.style.display = 'none';
        con2.style.display = 'none';
        con3.style.display = 'none';
        con4.style.display = 'none';
        con5.style.display = 'none';
        con6.style.display = 'none';
        con7.style.display = 'none';
        con8.style.display = 'block';
        con9.style.display = 'none';
        con10.style.display = 'none';
        con11.style.display = 'none';
        con12.style.display = 'none';
        con13.style.display = 'none';
        con14.style.display = 'none';
        con15.style.display = 'none';
        con16.style.display = 'none';
        con15A.style.display = 'none';
        con19.style.display = 'none';
        con20.style.display = 'none';
        con21.style.display = 'none';
        con22.style.display = 'none';
        con23.style.display = 'none';
        con24.style.display = 'none';
        con26.style.display = 'none';
        con27.style.display = 'none';
        con28.style.display = 'none';
        con29.style.display = 'none';
        con30.style.display = 'none';
        con31.style.display = 'none';
        con32.style.display = 'none';
    } else {
        con8.style.display = 'none';
    }
}

// dodisplay 9번
function doDisplay9(){
    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    if(con9.style.display=='none'){
        con1.style.display = 'none';
        con2.style.display = 'none';
        con3.style.display = 'none';
        con4.style.display = 'none';
        con5.style.display = 'none';
        con6.style.display = 'none';
        con7.style.display = 'none';
        con8.style.display = 'none';
        con9.style.display = 'block';
        con10.style.display = 'none';
        con11.style.display = 'none';
        con12.style.display = 'none';
    } else {
        con9.style.display = 'none';
    }
}

// dodisplay 10번
// function doDisplay10(){
//     var con1 = document.getElementById("teamchange");
//     var con2 = document.getElementById("rightmenu");
//     var con3 = document.getElementById("searchA");
//     var con4 = document.getElementById("todo");
//     var con5 = document.getElementById("file_main");
//     var con6 = document.getElementById("vote");
//     var con7 = document.getElementById("orga");
//     var con8 = document.getElementById("drive");
//     var con9 = document.getElementById("connect");
//     var con10 = document.getElementById("bookmark_main_div");
//     var con11 = document.getElementById("mention_main_div");
//     var con12 = document.getElementById("myDIV");
//     var con13 = document.getElementById("chatframe");
//     var con14 = document.getElementById("chatstart");
//     var con15 = document.getElementById("offline_off");
//     var con16 = document.getElementById("offline_on");
//     var con15A  = document.getElementById("offline_off");
//     var con19 = document.getElementById("invite_mem");
//     var con20 = document.getElementById("topicmenu");
//     var con21 = document.getElementById("createTopic");
//     var con22 = document.getElementById("topic_search");
//     var con23 = document.getElementById("seemore");
//     var con24 = document.getElementById("folder_seemore");
//     var con26 = document.getElementById("changeTopic");
//     var con27 = document.getElementById("folder_delete");
//     var con28 = document.getElementById("invite_newmember");
//     var con29 = document.getElementById("invite_member_mail");
//     var con30 = document.getElementById("profile_pic_change");
//     var con31 = document.getElementById("topic_delete");
//     var con32 = document.getElementById("topic_exit");      
//     if(con10.style.display=='none'){
//         con1.style.display = 'none';
//         con2.style.display = 'none';
//         con3.style.display = 'none';
//         con4.style.display = 'none';
//         con5.style.display = 'none';
//         con6.style.display = 'none';
//         con7.style.display = 'none';
//         con8.style.display = 'none';
//         con9.style.display = 'none';
//         con10.style.display = 'block';
//         con11.style.display = 'none';
//         con12.style.display = 'none';
//         con13.style.display = 'none';
//         con14.style.display = 'none';
//         con15.style.display = 'none';
//         con16.style.display = 'none';
//         con15A.style.display = 'none';
//         con19.style.display = 'none';
//         con20.style.display = 'none';
//         con21.style.display = 'none';
//         con22.style.display = 'none';
//         con23.style.display = 'none';
//         con24.style.display = 'none';
//         con26.style.display = 'none';
//         con27.style.display = 'none';
//         con28.style.display = 'none';
//         con29.style.display = 'none';
//         con30.style.display = 'none';
//         con31.style.display = 'none';
//         con32.style.display = 'none';
//     } else {
//         con10.style.display = 'none';
//     }
// }
    
// // dodisplay 11번
// function doDisplay11() {
//     var con1 = document.getElementById("teamchange");
//     var con2 = document.getElementById("rightmenu");
//     var con3 = document.getElementById("searchA");
//     var con4 = document.getElementById("todo");
//     var con5 = document.getElementById("file_main");
//     var con6 = document.getElementById("vote");
//     var con7 = document.getElementById("orga");
//     var con8 = document.getElementById("drive");
//     var con9 = document.getElementById("connect");
//     var con10 = document.getElementById("bookmark_main_div");
//     var con11 = document.getElementById("mention_main_div");
//     var con12 = document.getElementById("myDIV");
//     var con13 = document.getElementById("chatframe");
//     var con14 = document.getElementById("chatstart");
//     var con15 = document.getElementById("offline_off");
//     var con16 = document.getElementById("offline_on");
//     var con15A  = document.getElementById("offline_off");
//     var con19 = document.getElementById("invite_mem");
//     var con20 = document.getElementById("topicmenu");
//     var con21 = document.getElementById("createTopic");
//     var con22 = document.getElementById("topic_search");
//     var con23 = document.getElementById("seemore");
//     var con24 = document.getElementById("folder_seemore");
//     var con26 = document.getElementById("changeTopic");
//     var con27 = document.getElementById("folder_delete");
//     var con28 = document.getElementById("invite_newmember");
//     var con29 = document.getElementById("invite_member_mail");
//     var con30 = document.getElementById("profile_pic_change");
//     var con31 = document.getElementById("topic_delete");
//     var con32 = document.getElementById("topic_exit");     

//     if (con11.style.display == 'none') {
//         con1.style.display = 'none';
//         con2.style.display = 'none';
//         con3.style.display = 'none';
//         con4.style.display = 'none';
//         con5.style.display = 'none';
//         con6.style.display = 'none';
//         con7.style.display = 'none';
//         con8.style.display = 'none';
//         con9.style.display = 'none';
//         con10.style.display = 'none';
//         con11.style.display = 'block';
//         con12.style.display = 'none';
//         con13.style.display = 'none';
//         con14.style.display = 'none';
//         con15.style.display = 'none';
//         con16.style.display = 'none';
//         con15A.style.display = 'none';
//         con19.style.display = 'none';
//         con20.style.display = 'none';
//         con21.style.display = 'none';
//         con22.style.display = 'none';
//         con23.style.display = 'none';
//         con24.style.display = 'none';
//         con26.style.display = 'none';
//         con27.style.display = 'none';
//         con28.style.display = 'none';
//         con29.style.display = 'none';
//         con30.style.display = 'none';
//         con31.style.display = 'none';
//         con32.style.display = 'none';
//     } else {
//         con11.style.display = 'none';
//     }
// }

// // dodisplay 12번
// function doDisplay12(){
//     var con1 = document.getElementById("teamchange");
//     var con2 = document.getElementById("rightmenu");
//     var con3 = document.getElementById("searchA");
//     var con4 = document.getElementById("todo");
//     var con5 = document.getElementById("file_main");
//     var con6 = document.getElementById("vote");
//     var con7 = document.getElementById("orga");
//     var con8 = document.getElementById("drive");
//     var con9 = document.getElementById("connect");
//     var con10 = document.getElementById("bookmark_main_div");
//     var con11 = document.getElementById("mention_main_div");
//     var con12 = document.getElementById("myDIV");
//     var con13 = document.getElementById("chatframe");
//     var con14 = document.getElementById("chatstart");
//     var con15 = document.getElementById("offline_off");
//     var con16 = document.getElementById("offline_on");
//     var con15A  = document.getElementById("offline_off");
//     var con19 = document.getElementById("invite_mem");
//     var con20 = document.getElementById("topicmenu");
//     var con21 = document.getElementById("createTopic");
//     var con22 = document.getElementById("topic_search");
//     var con23 = document.getElementById("seemore");
//     var con24 = document.getElementById("folder_seemore");
//     var con26 = document.getElementById("changeTopic");
//     var con27 = document.getElementById("folder_delete");
//     var con28 = document.getElementById("invite_newmember");
//     var con29 = document.getElementById("invite_member_mail");
//     var con30 = document.getElementById("profile_pic_change");
//     var con31 = document.getElementById("topic_delete");
//     var con32 = document.getElementById("topic_exit");      

//     if(con12.style.display=='none'){
//         con1.style.display = 'none';
//         con2.style.display = 'none';
//         con3.style.display = 'none';
//         con4.style.display = 'none';
//         con5.style.display = 'none';
//         con6.style.display = 'none';
//         con7.style.display = 'none';
//         con8.style.display = 'none';
//         con9.style.display = 'none';
//         con10.style.display = 'none';
//         con11.style.display = 'none';
//         con12.style.display = 'block';
//         con13.style.display = 'none';
//         con14.style.display = 'none';
//         con15.style.display = 'none';
//         con16.style.display = 'none';
//         con15A.style.display = 'none';
//         con19.style.display = 'none';
//         con20.style.display = 'none';
//         con21.style.display = 'none';
//         con22.style.display = 'none';
//         con23.style.display = 'none';
//         con24.style.display = 'none';
//         con26.style.display = 'none';
//         con27.style.display = 'none';
//         con28.style.display = 'none';
//         con29.style.display = 'none';
//         con30.style.display = 'none';
//         con31.style.display = 'none';
//         con32.style.display = 'none';
//     } else {
//         con12.style.display = 'none';
//     }
// }

// dodisplay 13번
// function doDisplay13() {
//     var con1 = document.getElementById("teamchange");
//     var con2 = document.getElementById("rightmenu");
//     var con3 = document.getElementById("searchA");
//     var con4 = document.getElementById("todo");
//     var con5 = document.getElementById("file_main");
//     var con6 = document.getElementById("vote");
//     var con7 = document.getElementById("orga");
//     var con8 = document.getElementById("drive");
//     var con9 = document.getElementById("connect");
//     var con10 = document.getElementById("bookmark_main_div");
//     var con11 = document.getElementById("mention_main_div");
//     var con12 = document.getElementById("myDIV");
//     var con13 = document.getElementById("chatframe");
//     var con14 = document.getElementById("chatstart");
//     var con15 = document.getElementById("offline_off");
//     var con16 = document.getElementById("offline_on");
//     var con15A  = document.getElementById("offline_off");
//     var con19 = document.getElementById("invite_mem");
//     var con20 = document.getElementById("topicmenu");
//     var con21 = document.getElementById("createTopic");
//     var con22 = document.getElementById("topic_search");
//     var con23 = document.getElementById("seemore");
//     var con24 = document.getElementById("folder_seemore");
//     var con26 = document.getElementById("changeTopic");
//     var con27 = document.getElementById("folder_delete");
//     var con28 = document.getElementById("invite_newmember");
//     var con29 = document.getElementById("invite_member_mail");
//     var con30 = document.getElementById("profile_pic_change");
//     var con31 = document.getElementById("topic_delete");
//     var con32 = document.getElementById("topic_exit");      

                      
//     if (con13.style.display == 'none') {
//         con1.style.display = 'none';
//         con2.style.display = 'none';
//         con3.style.display = 'none';
//         con4.style.display = 'none';
//         con5.style.display = 'none';
//         con6.style.display = 'none';
//         con7.style.display = 'none';
//         con8.style.display = 'none';
//         con9.style.display = 'none';
//         con10.style.display = 'none';
//         con11.style.display = 'none';
//         con12.style.display = 'none';
//         con13.style.display = 'block';
//         con14.style.display = 'none';
//         con15.style.display = 'none';
//         con16.style.display = 'none';
//         con15A.style.display = 'none';
//         con19.style.display = 'none';
//         con20.style.display = 'none';
//         con21.style.display = 'none';
//         con22.style.display = 'none';
//         con23.style.display = 'none';
//         con24.style.display = 'none';
//         con26.style.display = 'none';
//         con27.style.display = 'none';
//         con28.style.display = 'none';
//         con29.style.display = 'none';
//         con30.style.display = 'none';
//         con31.style.display = 'none';
//         con32.style.display = 'none';
//     } else {
//         con13.style.display = 'none';
//     }
// }

// dodisplay 14번
function doDisplay14() {
    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");
    var con15A  = document.getElementById("offline_off");
    var con19 = document.getElementById("invite_mem");
    var con20 = document.getElementById("topicmenu");
    var con21 = document.getElementById("createTopic");
    var con22 = document.getElementById("topic_search");
    var con23 = document.getElementById("seemore");
    var con24 = document.getElementById("folder_seemore");
    var con26 = document.getElementById("changeTopic");
    var con27 = document.getElementById("folder_delete");
    var con28 = document.getElementById("invite_newmember");
    var con29 = document.getElementById("invite_member_mail");
    var con30 = document.getElementById("profile_pic_change");
    var con31 = document.getElementById("topic_delete");
    var con32 = document.getElementById("topic_exit");      
    con14.classList.add("emphasized");

    if (con14.style.display == 'none') {
        con1.style.display = 'none';
        con2.style.display = 'none';
        con3.style.display = 'none';
        con4.style.display = 'none';
        con5.style.display = 'none';
        con6.style.display = 'none';
        con7.style.display = 'none';
        con8.style.display = 'none';
        con9.style.display = 'none';
        con10.style.display = 'none';
        con11.style.display = 'none';
        con12.style.display = 'none';
        con13.style.display = 'none';
        con14.style.display = 'block';
        con15.style.display = 'none';
        con16.style.display = 'none';
        con15A.style.display = 'none';
        con19.style.display = 'none';
        con20.style.display = 'none';
        con21.style.display = 'none';
        con22.style.display = 'none';
        con23.style.display = 'none';
        con24.style.display = 'none';
        con26.style.display = 'none';
        con27.style.display = 'none';
        con28.style.display = 'none';
        con29.style.display = 'none';
        con30.style.display = 'none';
        con31.style.display = 'none';
        con32.style.display = 'none';
        
    } else {
        con14.style.display = 'none';
    }
}


// dodisplay 15번
function doDisplay15() {
    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");
    var con15A  = document.getElementById("offline_off");
    var con19 = document.getElementById("invite_mem");
    var con20 = document.getElementById("topicmenu");
    var con21 = document.getElementById("createTopic");
    var con22 = document.getElementById("topic_search");
    var con23 = document.getElementById("seemore");
    var con24 = document.getElementById("folder_seemore");
    var con26 = document.getElementById("changeTopic");
    var con27 = document.getElementById("folder_delete");
    var con28 = document.getElementById("invite_newmember");
    var con29 = document.getElementById("invite_member_mail");
    var con30 = document.getElementById("profile_pic_change");
    var con31 = document.getElementById("topic_delete");
    var con32 = document.getElementById("topic_exit");      

    con15.classList.add("emphasized");
        
    if (con15.style.display == 'none') {
        con1.style.display = 'none';
        con2.style.display = 'none';
        con3.style.display = 'none';
        con4.style.display = 'none';
        con5.style.display = 'none';
        con6.style.display = 'none';
        con7.style.display = 'none';
        con8.style.display = 'none';
        con9.style.display = 'none';
        con10.style.display = 'none';
        con11.style.display = 'none';
        con12.style.display = 'none';
        con13.style.display = 'none';
        con14.style.display = 'none';
        con15.style.display = 'block';
        con16.style.display = 'none';
        con15A.style.display = 'block';
        con19.style.display = 'none';
        con20.style.display = 'none';
        con21.style.display = 'none';
        con22.style.display = 'none';
        con23.style.display = 'none';
        con24.style.display = 'none';
        con26.style.display = 'none';
        con27.style.display = 'none';
        con28.style.display = 'none';
        con29.style.display = 'none';
        con30.style.display = 'none';
        con31.style.display = 'none';
        con32.style.display = 'none';
    } else {
        con15.style.display = 'none';
    }
}


// dodisplay 16번
function doDisplay16() {
    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");
    con16.classList.add("emphasized");
    
    if (con16.style.display == 'none') {
        con1.style.display = 'none';
        con2.style.display = 'none';
        con3.style.display = 'none';
        con4.style.display = 'none';
        con5.style.display = 'none';
        con6.style.display = 'none';
        con7.style.display = 'none';
        con8.style.display = 'none';
        con9.style.display = 'none';
        con10.style.display = 'none';
        con11.style.display = 'none';
        con12.style.display = 'none';
        con13.style.display = 'none';
        con14.style.display = 'none';
        con15.style.display = 'none';
        con16.style.display = 'block';
    } else {
        con16.style.display = 'none';
    }
}

// dodisplay 17번
function doDisplay17() {
    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");                     
    var con15A  = document.getElementById("offline_off");
    con15A.classList.add("emphasized");
    
    if (con15A.style.display == 'none') {
        con1.style.display = 'none';
        con2.style.display = 'none';
        con3.style.display = 'none';
        con4.style.display = 'none';
        con5.style.display = 'none';
        con6.style.display = 'none';
        con7.style.display = 'none';
        con8.style.display = 'none';
        con9.style.display = 'none';
        con10.style.display = 'none';
        con11.style.display = 'none';
        con12.style.display = 'none';
        con13.style.display = 'none';
        con14.style.display = 'none';
        con15.style.display = 'none';
        con16.style.display = 'none';
        con15A.style.display = 'block';
    } else {
        con15A.style.display = 'none';
    }
}

// dodisplay 19번
function doDisplay19() {
    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");
    var con15A  = document.getElementById("offline_off");
    var con19 = document.getElementById("invite_mem");
    var con20 = document.getElementById("topicmenu");
    var con21 = document.getElementById("createTopic");
    var con22 = document.getElementById("topic_search");
    var con23 = document.getElementById("seemore");
    var con24 = document.getElementById("folder_seemore");
    var con26 = document.getElementById("changeTopic");
    var con27 = document.getElementById("folder_delete");
    var con28 = document.getElementById("invite_newmember");
    var con29 = document.getElementById("invite_member_mail");
    var con30 = document.getElementById("profile_pic_change");
    var con31 = document.getElementById("topic_delete");
    var con32 = document.getElementById("topic_exit");      
    con19.classList.add("emphasized");
                
    if (con19.style.display == 'none') {
        con1.style.display = 'none';
        con2.style.display = 'none';
        con3.style.display = 'none';
        con4.style.display = 'none';
        con5.style.display = 'none';
        con6.style.display = 'none';
        con7.style.display = 'none';
        con8.style.display = 'none';
        con9.style.display = 'none';
        con10.style.display = 'none';
        con11.style.display = 'none';
        con12.style.display = 'none';
        con13.style.display = 'none';
        con14.style.display = 'none';
        con15.style.display = 'none';
        con16.style.display = 'none';
        con15A.style.display = 'none';
        con19.style.display = 'block';
        con20.style.display = 'none';
        con21.style.display = 'none';
        con22.style.display = 'none';
        con23.style.display = 'none';
        con24.style.display = 'none';
        con26.style.display = 'none';
        con27.style.display = 'none';
        con28.style.display = 'none';
        con29.style.display = 'none';
        con30.style.display = 'none';
        con31.style.display = 'none';
        con32.style.display = 'none';
        
    } else {
        con19.style.display = 'none';
        
    }
}

// dodisplay 20번
// function doDisplay20() {

//     var con1 = document.getElementById("teamchange");
//     var con2 = document.getElementById("rightmenu");
//     var con3 = document.getElementById("searchA");
//     var con4 = document.getElementById("todo");
//     var con5 = document.getElementById("file_main");
//     var con6 = document.getElementById("vote");
//     var con7 = document.getElementById("orga");
//     var con8 = document.getElementById("drive");
//     var con9 = document.getElementById("connect");
//     var con10 = document.getElementById("bookmark_main_div");
//     var con11 = document.getElementById("mention_main_div");
//     var con12 = document.getElementById("myDIV");
//     var con13 = document.getElementById("chatframe");
//     var con14 = document.getElementById("chatstart");
//     var con15 = document.getElementById("offline_off");
//     var con16 = document.getElementById("offline_on");
//     var con15A  = document.getElementById("offline_off");
//     var con19 = document.getElementById("invite_mem");
//     var con20 = document.getElementById("topicmenu");
//     var con21 = document.getElementById("createTopic");
//     var con22 = document.getElementById("topic_search");
//     var con23 = document.getElementById("seemore");
//     var con24 = document.getElementById("folder_seemore");
//     var con26 = document.getElementById("changeTopic");
//     var con27 = document.getElementById("folder_delete");
//     var con28 = document.getElementById("invite_newmember");
//     var con29 = document.getElementById("invite_member_mail");
//     var con30 = document.getElementById("profile_pic_change");
//     var con31 = document.getElementById("topic_delete");
//     var con32 = document.getElementById("topic_exit");      
    
    
//     if (con20.style.display == 'none') {
//     con20.style.display = 'block';
//     con1.style.display = 'none';
//     con2.style.display = 'none';
//     con3.style.display = 'none';
//     con4.style.display = 'none';
//     con5.style.display = 'none';
//     con6.style.display = 'none';
//     con7.style.display = 'none';
//     con8.style.display = 'none';
//     con9.style.display = 'none';
//     con10.style.display = 'none';
//     con11.style.display = 'none';
//     con12.style.display = 'none';
//     con13.style.display = 'none';
//     con14.style.display = 'none';
//     con15.style.display = 'none';
//     con16.style.display = 'none';
//     con15A.style.display = 'none';
//     con19.style.display = 'none';
//     con21.style.display = 'none';
//     con22.style.display = 'none';
//     con23.style.display = 'none';
//     con24.style.display = 'none';
//     con26.style.display = 'none';
//     con27.style.display = 'none';
//     con28.style.display = 'none';
//     con29.style.display = 'none';
//     con30.style.display = 'none';
//     con31.style.display = 'none';
//     con32.style.display = 'none';
//   } else {
//     con20.style.display = 'none';
//   }
// }

// dodisplay 21번
function doDisplay21() {
    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");
    var con15A  = document.getElementById("offline_off");
    var con19 = document.getElementById("invite_mem");
    var con20 = document.getElementById("topicmenu");
    var con21 = document.getElementById("createTopic");
    var con22 = document.getElementById("topic_search");
    var con23 = document.getElementById("seemore");
    var con24 = document.getElementById("folder_seemore");
    var con26 = document.getElementById("changeTopic");
    var con27 = document.getElementById("folder_delete");
    var con28 = document.getElementById("invite_newmember");
    var con29 = document.getElementById("invite_member_mail");
    var con30 = document.getElementById("profile_pic_change");
    var con31 = document.getElementById("topic_delete");
    var con32 = document.getElementById("topic_exit");      
    con21.classList.add("emphasized");

    if (con21.style.display == 'none') {
        con21.style.display = 'block';
        con1.style.display = 'none';
        con2.style.display = 'none';
        con3.style.display = 'none';
        con4.style.display = 'none';
        con5.style.display = 'none';
        con6.style.display = 'none';
        con7.style.display = 'none';
        con8.style.display = 'none';
        con9.style.display = 'none';
        con10.style.display = 'none';
        con11.style.display = 'none';
        con12.style.display = 'none';
        con13.style.display = 'none';
        con14.style.display = 'none';
        con15.style.display = 'none';
        con16.style.display = 'none';
        con15A.style.display = 'none';
        con19.style.display = 'none';
        con20.style.display = 'none';
        con22.style.display = 'none';
        con23.style.display = 'none';
        con24.style.display = 'none';
        con26.style.display = 'none';
        con27.style.display = 'none';
        con28.style.display = 'none';
        con29.style.display = 'none';
        con30.style.display = 'none';
        con31.style.display = 'none';
        con32.style.display = 'none';
    } else {
    con21.style.display = 'none';
    }
}

// dodisplay 22번
function doDisplay22() {
    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");
    var con15A  = document.getElementById("offline_off");
    var con19 = document.getElementById("invite_mem");
    var con20 = document.getElementById("topicmenu");
    var con21 = document.getElementById("createTopic");
    var con22 = document.getElementById("topic_search");
    var con23 = document.getElementById("seemore");
    var con24 = document.getElementById("folder_seemore");
    var con26 = document.getElementById("changeTopic");
    var con27 = document.getElementById("folder_delete");
    var con28 = document.getElementById("invite_newmember");
    var con29 = document.getElementById("invite_member_mail");
    var con30 = document.getElementById("profile_pic_change");
    var con31 = document.getElementById("topic_delete");
    var con32 = document.getElementById("topic_exit");      

con22.classList.add("emphasized");

if (con22.style.display == 'none') {
    con22.style.display = 'block';
    con1.style.display = 'none';
    con2.style.display = 'none';
    con3.style.display = 'none';
    con4.style.display = 'none';
    con5.style.display = 'none';
    con6.style.display = 'none';
    con7.style.display = 'none';
    con8.style.display = 'none';
    con9.style.display = 'none';
    con10.style.display = 'none';
    con11.style.display = 'none';
    con12.style.display = 'none';
    con13.style.display = 'none';
    con14.style.display = 'none';
    con15.style.display = 'none';
    con16.style.display = 'none';
    con15A.style.display = 'none';
    con19.style.display = 'none';
    con20.style.display = 'none';
    con21.style.display = 'none';
    con23.style.display = 'none';
    con24.style.display = 'none';
    con26.style.display = 'none';
    con27.style.display = 'none';
    con28.style.display = 'none';
    con29.style.display = 'none';
    con30.style.display = 'none';
    con31.style.display = 'none';
    con32.style.display = 'none';

    } else {
        con22.style.display = 'none';

    }
}

// dodisplay 23번
function doDisplay23() {
    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");
    var con15A  = document.getElementById("offline_off");
    var con19 = document.getElementById("invite_mem");
    var con20 = document.getElementById("topicmenu");
    var con21 = document.getElementById("createTopic");
    var con22 = document.getElementById("topic_search");
    var con23 = document.getElementById("seemore");
    var con24 = document.getElementById("folder_seemore");
    var con26 = document.getElementById("changeTopic");
    var con27 = document.getElementById("folder_delete");
    var con28 = document.getElementById("invite_newmember");
    var con29 = document.getElementById("invite_member_mail");
    var con30 = document.getElementById("profile_pic_change");
    var con31 = document.getElementById("topic_delete");
    var con32 = document.getElementById("topic_exit");      
    con23.classList.add("emphasized");
        
    if (con23.style.display == 'none') {
        con1.style.display = 'none';
        con2.style.display = 'none';
        con3.style.display = 'none';
        con4.style.display = 'none';
        con5.style.display = 'none';
        con6.style.display = 'none';
        con7.style.display = 'none';
        con8.style.display = 'none';
        con9.style.display = 'none';
        con10.style.display = 'none';
        con11.style.display = 'none';
        con12.style.display = 'none';
        con13.style.display = 'none';
        con14.style.display = 'none';
        con15.style.display = 'none';
        con16.style.display = 'none';
        con15A.style.display = 'none';
        con19.style.display = 'none';
        con20.style.display = 'none';
        con21.style.display = 'none';
        con22.style.display = 'none';
        con23.style.display = 'block';
        con24.style.display = 'none';
        con26.style.display = 'none';
        con27.style.display = 'none';
        con28.style.display = 'none';
        con29.style.display = 'none';
        con30.style.display = 'none';
        con31.style.display = 'none';
        con32.style.display = 'none';
        
        
    } else {
    con23.style.display = 'none';
    }
}

// dodisplay 24번
// function doDisplay24() {

//     var con1 = document.getElementById("teamchange");
//     var con2 = document.getElementById("rightmenu");
//     var con3 = document.getElementById("searchA");
//     var con4 = document.getElementById("todo");
//     var con5 = document.getElementById("file_main");
//     var con6 = document.getElementById("vote");
//     var con7 = document.getElementById("orga");
//     var con8 = document.getElementById("drive");
//     var con9 = document.getElementById("connect");
//     var con10 = document.getElementById("bookmark_main_div");
//     var con11 = document.getElementById("mention_main_div");
//     var con12 = document.getElementById("myDIV");
//     var con13 = document.getElementById("chatframe");
//     var con14 = document.getElementById("chatstart");
//     var con15 = document.getElementById("offline_off");
//     var con16 = document.getElementById("offline_on");
//     var con15A  = document.getElementById("offline_off");
//     var con19 = document.getElementById("invite_mem");
//     var con20 = document.getElementById("topicmenu");
//     var con21 = document.getElementById("createTopic");
//     var con22 = document.getElementById("topic_search");
//     var con23 = document.getElementById("seemore");
//     var con24 = document.getElementById("folder_seemore");
//     var con26 = document.getElementById("changeTopic");
//     var con27 = document.getElementById("folder_delete");
//     var con28 = document.getElementById("invite_newmember");
//     var con29 = document.getElementById("invite_member_mail");
//     var con30 = document.getElementById("profile_pic_change");
//     var con31 = document.getElementById("topic_delete");
//     var con32 = document.getElementById("topic_exit");      


//     con24.classList.add("emphasized");

//     if (con24.style.display == 'none') {
//         con24.style.display = 'block';
//         con1.style.display = 'none';
//         con2.style.display = 'none';
//         con3.style.display = 'none';
//         con4.style.display = 'none';
//         con5.style.display = 'none';
//         con6.style.display = 'none';
//         con7.style.display = 'none';
//         con8.style.display = 'none';
//         con9.style.display = 'none';
//         con10.style.display = 'none';
//         con11.style.display = 'none';
//         con12.style.display = 'none';
//         con13.style.display = 'none';
//         con14.style.display = 'none';
//         con15.style.display = 'none';
//         con16.style.display = 'none';
//         con15A.style.display = 'none';
//         con19.style.display = 'none';
//         con20.style.display = 'none';
//         con21.style.display = 'none';
//         con22.style.display = 'none';
//         con23.style.display = 'none';
//         con26.style.display = 'none';
//         con27.style.display = 'none';
//         con28.style.display = 'none';
//         con29.style.display = 'none';
//         con30.style.display = 'none';
//         con31.style.display = 'none';
//         con32.style.display = 'none';
//     } else {
//         con24.style.display = 'none';
//     }
// }


// dodisplay 26번
function doDisplay26() {
    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");
    var con15A  = document.getElementById("offline_off");
    var con19 = document.getElementById("invite_mem");
    var con20 = document.getElementById("topicmenu");
    var con21 = document.getElementById("createTopic");
    var con22 = document.getElementById("topic_search");
    var con23 = document.getElementById("seemore");
    var con24 = document.getElementById("folder_seemore");
    var con26 = document.getElementById("changeTopic");
    var con27 = document.getElementById("folder_delete");
    var con28 = document.getElementById("invite_newmember");
    var con29 = document.getElementById("invite_member_mail");
    var con30 = document.getElementById("profile_pic_change");
    var con31 = document.getElementById("topic_delete");
    var con32 = document.getElementById("topic_exit");    
    con26.classList.add("emphasized");

    if (con26.style.display == 'none') {
        con26.style.display = 'block';
        con1.style.display = 'none';
        con2.style.display = 'none';
        con3.style.display = 'none';
        con4.style.display = 'none';
        con5.style.display = 'none';
        con6.style.display = 'none';
        con7.style.display = 'none';
        con8.style.display = 'none';
        con9.style.display = 'none';
        con10.style.display = 'none';
        con11.style.display = 'none';
        con12.style.display = 'none';
        con13.style.display = 'none';
        con14.style.display = 'none';
        con15.style.display = 'none';
        con16.style.display = 'none';
        con15A.style.display = 'none';
        con19.style.display = 'none';
        con20.style.display = 'none';
        con21.style.display = 'none';
        con22.style.display = 'none';
        con23.style.display = 'none';
        con24.style.display = 'none';
        con27.style.display = 'none';
        con28.style.display = 'none';
        con29.style.display = 'none';
        con30.style.display = 'none';
        con31.style.display = 'none';
        con32.style.display = 'none';
    } else {
        con26.style.display = 'none';
    }
}


// dodisplay 27번
function doDisplay27() {

    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");
    var con15A  = document.getElementById("offline_off");
    var con19 = document.getElementById("invite_mem");
    var con20 = document.getElementById("topicmenu");
    var con21 = document.getElementById("createTopic");
    var con22 = document.getElementById("topic_search");
    var con23 = document.getElementById("seemore");
    var con24 = document.getElementById("folder_seemore");
    var con26 = document.getElementById("changeTopic");
    var con27 = document.getElementById("folder_delete");
    con27.classList.add("emphasized");

    if (con26.style.display == 'none') {
        con27.style.display = 'block';
        con1.style.display = 'none';
        con2.style.display = 'none';
        con3.style.display = 'none';
        con4.style.display = 'none';
        con5.style.display = 'none';
        con6.style.display = 'none';
        con7.style.display = 'none';
        con8.style.display = 'none';
        con9.style.display = 'none';
        con10.style.display = 'none';
        con11.style.display = 'none';
        con12.style.display = 'none';
        con13.style.display = 'none';
        con14.style.display = 'none';
        con15.style.display = 'none';
        con16.style.display = 'none';
        con15A.style.display = 'none';
        con19.style.display = 'none';
        con20.style.display = 'none';
        con21.style.display = 'none';
        con22.style.display = 'none';
        con23.style.display = 'none';
        con24.style.display = 'none';
        con26.style.display = 'none';
  
    } else {
        con27.style.display = 'none';
    }
}

// dodisplay 28번
function doDisplay28() {

    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");
    var con15A  = document.getElementById("offline_off");
    var con19 = document.getElementById("invite_mem");
    var con20 = document.getElementById("topicmenu");
    var con21 = document.getElementById("createTopic");
    var con22 = document.getElementById("topic_search");
    var con23 = document.getElementById("seemore");
    var con24 = document.getElementById("folder_seemore");
    var con26 = document.getElementById("changeTopic");
    var con27 = document.getElementById("folder_delete");
    var con28 = document.getElementById("invite_newmember");
    con28.classList.add("emphasized");

    if (con26.style.display == 'none') {
        con28.style.display = 'block';
        con1.style.display = 'none';
        con2.style.display = 'none';
        con3.style.display = 'none';
        con4.style.display = 'none';
        con5.style.display = 'none';
        con6.style.display = 'none';
        con7.style.display = 'none';
        con8.style.display = 'none';
        con9.style.display = 'none';
        con10.style.display = 'none';
        con11.style.display = 'none';
        con12.style.display = 'none';
        con13.style.display = 'none';
        con14.style.display = 'none';
        con15.style.display = 'none';
        con16.style.display = 'none';
        con15A.style.display = 'none';
        con19.style.display = 'none';
        con20.style.display = 'none';
        con21.style.display = 'none';
        con22.style.display = 'none';
        con23.style.display = 'none';
        con24.style.display = 'none';
        con26.style.display = 'none';
        con27.style.display = 'none';
        
  
    } else {
        con28.style.display = 'none';
    }
}


// dodisplay 29번
function doDisplay29() {

    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");
    var con15A  = document.getElementById("offline_off");
    var con19 = document.getElementById("invite_mem");
    var con20 = document.getElementById("topicmenu");
    var con21 = document.getElementById("createTopic");
    var con22 = document.getElementById("topic_search");
    var con23 = document.getElementById("seemore");
    var con24 = document.getElementById("folder_seemore");
    var con26 = document.getElementById("changeTopic");
    var con27 = document.getElementById("folder_delete");
    var con28 = document.getElementById("invite_newmember");
    var con29 = document.getElementById("invite_member_mail");
    con29.classList.add("emphasized");

    if (con26.style.display == 'none') {
        con29.style.display = 'block';
        con1.style.display = 'none';
        con2.style.display = 'none';
        con3.style.display = 'none';
        con4.style.display = 'none';
        con5.style.display = 'none';
        con6.style.display = 'none';
        con7.style.display = 'none';
        con8.style.display = 'none';
        con9.style.display = 'none';
        con10.style.display = 'none';
        con11.style.display = 'none';
        con12.style.display = 'none';
        con13.style.display = 'none';
        con14.style.display = 'none';
        con15.style.display = 'none';
        con16.style.display = 'none';
        con15A.style.display = 'none';
        con19.style.display = 'none';
        con20.style.display = 'none';
        con21.style.display = 'none';
        con22.style.display = 'none';
        con23.style.display = 'none';
        con24.style.display = 'none';
        con26.style.display = 'none';
        con27.style.display = 'none';
        con28.style.display = 'none';
        
  
    } else {
        con29.style.display = 'none';
    }
}

// dodisplay 30번
function doDisplay30() {

    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");
    var con15A  = document.getElementById("offline_off");
    var con19 = document.getElementById("invite_mem");
    var con20 = document.getElementById("topicmenu");
    var con21 = document.getElementById("createTopic");
    var con22 = document.getElementById("topic_search");
    var con23 = document.getElementById("seemore");
    var con24 = document.getElementById("folder_seemore");
    var con26 = document.getElementById("changeTopic");
    var con27 = document.getElementById("folder_delete");
    var con28 = document.getElementById("invite_newmember");
    var con29 = document.getElementById("invite_member_mail");
    var con30 = document.getElementById("profile_pic_change");
    con30.classList.add("emphasized");

    if (con30.style.display == 'none') {
        con30.style.display = 'block';
        con1.style.display = 'none';
        con2.style.display = 'none';
        con3.style.display = 'none';
        con4.style.display = 'none';
        con5.style.display = 'none';
        con6.style.display = 'none';
        con7.style.display = 'none';
        con8.style.display = 'none';
        con9.style.display = 'none';
        con10.style.display = 'none';
        con11.style.display = 'none';
        con12.style.display = 'none';
        con13.style.display = 'none';
        con14.style.display = 'none';
        con15.style.display = 'none';
        con16.style.display = 'none';
        con15A.style.display = 'none';
        con19.style.display = 'none';
        con20.style.display = 'none';
        con21.style.display = 'none';
        con22.style.display = 'none';
        con23.style.display = 'none';
        con24.style.display = 'none';
        con26.style.display = 'none';
        con27.style.display = 'none';
        con28.style.display = 'none';
        con29.style.display = 'none';
  
    } else {
        con30.style.display = 'none';
    }
}

// dodisplay 31번
function doDisplay31() {
    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");
    var con15A  = document.getElementById("offline_off");
    var con19 = document.getElementById("invite_mem");
    var con20 = document.getElementById("topicmenu");
    var con21 = document.getElementById("createTopic");
    var con22 = document.getElementById("topic_search");
    var con23 = document.getElementById("seemore");
    var con24 = document.getElementById("folder_seemore");
    var con26 = document.getElementById("changeTopic");
    var con27 = document.getElementById("folder_delete");
    var con28 = document.getElementById("invite_newmember");
    var con29 = document.getElementById("invite_member_mail");
    var con30 = document.getElementById("profile_pic_change");
    var con31 = document.getElementById("topic_delete");
    con31.classList.add("emphasized");

    if (con31.style.display == 'none') {
        con31.style.display = 'block';
        con1.style.display = 'none';
        con2.style.display = 'none';
        con3.style.display = 'none';
        con4.style.display = 'none';
        con5.style.display = 'none';
        con6.style.display = 'none';
        con7.style.display = 'none';
        con8.style.display = 'none';
        con9.style.display = 'none';
        con10.style.display = 'none';
        con11.style.display = 'none';
        con12.style.display = 'none';
        con13.style.display = 'none';
        con14.style.display = 'none';
        con15.style.display = 'none';
        con16.style.display = 'none';
        con15A.style.display = 'none';
        con19.style.display = 'none';
        con20.style.display = 'none';
        con21.style.display = 'none';
        con22.style.display = 'none';
        con23.style.display = 'none';
        con24.style.display = 'none';
        con26.style.display = 'none';
        con27.style.display = 'none';
        con28.style.display = 'none';
        con29.style.display = 'none';
        con30.style.display = 'none';
  
    } else {
        con31.style.display = 'none';
    }
}


// dodisplay 32번
function doDisplay32() {
    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");
    var con15A  = document.getElementById("offline_off");
    var con19 = document.getElementById("invite_mem");
    var con20 = document.getElementById("topicmenu");
    var con21 = document.getElementById("createTopic");
    var con22 = document.getElementById("topic_search");
    var con23 = document.getElementById("seemore");
    var con24 = document.getElementById("folder_seemore");
    var con26 = document.getElementById("changeTopic");
    var con27 = document.getElementById("folder_delete");
    var con28 = document.getElementById("invite_newmember");
    var con29 = document.getElementById("invite_member_mail");
    var con30 = document.getElementById("profile_pic_change");
    var con31 = document.getElementById("topic_delete");
    var con32 = document.getElementById("topic_exit");
    con32.classList.add("emphasized");

    if (con32.style.display == 'none') {
        con32.style.display = 'block';
        con1.style.display = 'none';
        con2.style.display = 'none';
        con3.style.display = 'none';
        con4.style.display = 'none';
        con5.style.display = 'none';
        con6.style.display = 'none';
        con7.style.display = 'none';
        con8.style.display = 'none';
        con9.style.display = 'none';
        con10.style.display = 'none';
        con11.style.display = 'none';
        con12.style.display = 'none';
        con13.style.display = 'none';
        con14.style.display = 'none';
        con15.style.display = 'none';
        con16.style.display = 'none';
        con15A.style.display = 'none';
        con19.style.display = 'none';
        con20.style.display = 'none';
        con21.style.display = 'none';
        con22.style.display = 'none';
        con23.style.display = 'none';
        con24.style.display = 'none';
        con26.style.display = 'none';
        con27.style.display = 'none';
        con28.style.display = 'none';
        con29.style.display = 'none';
        con30.style.display = 'none';
        con31.style.display = 'none';
  
    } else {
        con32.style.display = 'none';
    }
}



// dochange 함수
function doChange(){
    var conA = document.getElementById("middle_first_page");
    var conB = document.getElementById(" ");
    var con1 = document.getElementById("teamchange");
    var con2 = document.getElementById("rightmenu");
    var con3 = document.getElementById("searchA");
    var con4 = document.getElementById("todo");
    var con5 = document.getElementById("file_main");
    var con6 = document.getElementById("vote");
    var con7 = document.getElementById("orga");
    var con8 = document.getElementById("drive");
    var con9 = document.getElementById("connect");
    var con10 = document.getElementById("bookmark_main_div");
    var con11 = document.getElementById("mention_main_div");
    var con12 = document.getElementById("myDIV");
    var con13 = document.getElementById("chatframe");
    var con14 = document.getElementById("chatstart");
    var con15 = document.getElementById("offline_off");
    var con16 = document.getElementById("offline_on");
    var con15A  = document.getElementById("offline_off");
    var con19 = document.getElementById("invite_mem");
    var con20 = document.getElementById("topicmenu");
    var con21 = document.getElementById("createTopic");
    var con22 = document.getElementById("topic_search");
    var con23 = document.getElementById("seemore");
    var con24 = document.getElementById("folder_seemore");
    var con26 = document.getElementById("changeTopic");
    var con27 = document.getElementById("folder_delete");
    var con28 = document.getElementById("invite_newmember");
    var con29 = document.getElementById("invite_member_mail");
    var con30 = document.getElementById("profile_pic_change");
    var con31 = document.getElementById("topic_delete");
    var con32 = document.getElementById("topic_exit");      

    if(conA.style.display == 'block'){
        conA.style.display = 'none';
        conB.style.display = 'block';
        con1.style.display = 'none';
        con2.style.display = 'none';
        con3.style.display = 'none';
        con4.style.display = 'none';
        con5.style.display = 'none';
        con6.style.display = 'none';
        con7.style.display = 'none';
        con8.style.display = 'none';
        con9.style.display = 'none';
        con10.style.display = 'none';
        con11.style.display = 'none';
        con12.style.display = 'none';
        con13.style.display = 'none';
        con14.style.display = 'none';
        con15.style.display = 'none';
        con16.style.display = 'none';
        con15A.style.display = 'none';
        con19.style.display = 'none';
        con20.style.display = 'none';
        con21.style.display = 'none';
        con22.style.display = 'none';
        con23.style.display = 'none';
        con24.style.display = 'none';
        con26.style.display = 'none';
        con27.style.display = 'none';
        con28.style.display = 'none';
        con29.style.display = 'none';
        con30.style.display = 'none';
        con31.style.display = 'none';
        con32.style.display = 'none';
    } 
}
