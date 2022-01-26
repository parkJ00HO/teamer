<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
%>
이메일 <input type = "email" id = "emailText">
<button id = "emailCheck" onclick = "emailSend()"> 인증번호 받기 </button>

인증번호 <input type = "text" id = "certificationNumber">
<button id = "certificationBtn" onclick = "emailCertification()">인증하기 </button>
<input type = "hidden" id = "certificationYN" value = "false">
</body>
</html>