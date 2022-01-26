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

@WebServlet("/TopicDeleteServlet")
public class TopicDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "topic12";
		String db_pw = "user1234";
		
		String topic_index = request.getParameter("topic_index");
	
		 Connection conn = null;
		    try{
		       Class.forName(driver);
		        conn = DriverManager.getConnection(url,db_id,db_pw);
	        }catch(Exception e){
		         e.printStackTrace();
		     }
		    
		    try {
		    	String sql1 = "DELETE FROM TOPIC WHERE T_ID = ?";
			    	PreparedStatement pstmt1;
					pstmt1 = conn.prepareStatement(sql1);
					pstmt1.setString(1, topic_index);
					int ret1 = pstmt1.executeUpdate();
						if(ret1 == 1) {
							System.out.println("DELETE TOPIC FROM TOPIC TABLE IS COMPLETE!");
						}
				String sql2 = "DELETE FROM MESSAGE WHERE M_T_ID = ?";
				    	PreparedStatement pstmt2;
						pstmt2 = conn.prepareStatement(sql2);
						pstmt2.setString(1, topic_index);
						int ret2 = pstmt2.executeUpdate();
							if(ret2 == 1) {
								System.out.println("DELETE TOPIC FROM MESSAGE TABLE IS COMPLETE!");
							}
				
				String sql3 = "DELETE FROM FOLDER_TOPIC WHERE F_TOPIC_ID = ?";
					    	PreparedStatement pstmt3;
							pstmt3 = conn.prepareStatement(sql3);
							pstmt3.setString(1, topic_index);
							int ret3 = pstmt3.executeUpdate();
								if(ret3 == 1) {
									System.out.println("DELETE TOPIC FROM FOLDER_TOPIC TABLE IS COMPLETE!");
								}
			
			} catch (SQLException e) {
				e.printStackTrace();
			}

		    
		
		
	}

}
