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


@WebServlet("/TopicUpdateServlet")
public class TopicUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "topic12";
		String db_pw = "user1234";
		
		String update_topicName = request.getParameter("update_topicName");
		String topic_id_update = request.getParameter("topic_id_update");
		
		 Connection conn = null;
		    try{
		       Class.forName(driver);
		        conn = DriverManager.getConnection(url,db_id,db_pw);
	        }catch(Exception e){
		         e.printStackTrace();
		     }
		    
		    try {
		    	String sql1 = "UPDATE TOPIC SET T_NAME=? WHERE T_ID = ?";
			    	PreparedStatement pstmt1;
					pstmt1 = conn.prepareStatement(sql1);
					pstmt1.setString(1, update_topicName);
					pstmt1.setString(2, topic_id_update);
					int ret1 = pstmt1.executeUpdate();
						if(ret1 == 1) {
							System.out.println("UPDATE COMPLETE!");
						}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}

		
	
		
		
		
	}

}
