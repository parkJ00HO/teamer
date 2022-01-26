<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.File" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File uploading..</title>
</head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<body>

<%
		String filename="";
		int sizeLimit = 1510241024;
		
		String realPath = request.getServletContext().getRealPath("upload");
		 
       		 File dir = new File(realPath);
		if(!dir.exists()) dir.mkdirs();
		
		MultipartRequest multipartRequest = null;
		multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
		
		filename = multipartRequest.getFilesystemName("photo");
	
		String profile_image = request.getParameter("photo");
		String loginEmail  = (String)(session.getAttribute("login_id"));
		
		String domain = multipartRequest.getParameter("domain");
		String owner = multipartRequest.getParameter("owner");
		String t_index = multipartRequest.getParameter("t_index");
	%>
	
	<script type="text/javascript">
		$(function(){
			var imgurl = $("#imgurl").val();
			/* var domain =  */
			$("#save").click(function(){
<%-- 				var login_id = <%=profile_image%>; --%>
				location.href = "out_action.jsp?image="+imgurl+"&login_id="+"<%=loginEmail%>"+"&domain="+"<%=domain%>"
						+"&owner="+"<%=owner%>"+"&t_index="+"<%=t_index%>";
			});
		});
		
	</script>
	
	
	<style>
		.frame{
			    width: 200px;
			    margin: auto;
			    margin-top: 4em;
			    border-radius: 20px;
		}
		
		.subframe{
			border-radius: 56px;
		    width: 257px;
		    height: 200px;
		}
		
		


	</style>
	
	<div class = "frame">
		<div class = "subframe">
			<img id = "imgcheck" src="${pageContext.request.contextPath}/upload/<%=filename%>" style = "width : 100%; height : 100%; border-radius : 112px;" /> 
		</div>	
		<div style = width : 200px;	>
			<input type = "hidden" id = imgurl value = "${pageContext.request.contextPath}/upload/<%=filename%>"> 
			<input type = "hidden" id = domain value = "<%=domain%>">
			<input type = "hidden" id = owner value = "<%=owner%>">
			<input type = "hidden" id = t_index value = "<%=t_index%>">
			<button id = "save">save this image</button>	
		</div>
	</div>




</body>
</html>