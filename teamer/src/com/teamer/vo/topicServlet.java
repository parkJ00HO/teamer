package com.teamer.vo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

@WebServlet("/topicServlet")
public class topicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public topicServlet() {
    }

//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "topic12";
		String db_pw = "user1234";
		
		String topic_name = request.getParameter("topic_name");
		String topic_public = request.getParameter("topic_public");
		String login_email = request.getParameter("login_email");
		String t_index = request.getParameter("team_indexA");
		
		 Connection conn = null;
		    try{
		       Class.forName(driver);
		        conn = DriverManager.getConnection(url,db_id,db_pw);
	        }catch(Exception e){
		         e.printStackTrace();
		     }
		  
		 String sql="insert into topic(t_id,t_name,t_public,t_member,t_bookmark,t_t_index) "
				 +"values('TO'|| TOPIC_SEQ.nextval,?,?,?,'0',?)";
		 PreparedStatement pstmt;
		 try {
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, topic_name);
			pstmt.setString(2, topic_public);
			pstmt.setString(3, login_email);
			pstmt.setString(4, t_index);
			int	ret = pstmt.executeUpdate();
			
			if(ret==1) {
				response.setContentType("application/json");
				PrintWriter out = response.getWriter();
				
				JSONObject obj = new JSONObject();
				obj.put("topic_check",1);
				out.print(obj);
			} 
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 
	}

}
