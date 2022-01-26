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

@WebServlet("/folderNameServlet")
public class folderNameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public folderNameServlet() {
    }



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "topic12";
		String db_pw = "user1234";
		
		String folderName = request.getParameter("folderName");
		String login_emailB = request.getParameter("login_emailB");
		String team_indexB = request.getParameter("team_indexB");
		
	    Connection conn = null;
	    try{
	       Class.forName(driver);
	        conn = DriverManager.getConnection(url,db_id,db_pw);
        }catch(Exception e){
	         e.printStackTrace();
	     }
	    
	    String sql ="insert into folders(f_name,f_email,f_t_index,f_index) "
	    			+"values(?,?,?,'F'||FOLDERS_SEQ.nextval)";
	    PreparedStatement pstmt = null;
	    try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,folderName);
			pstmt.setString(2,login_emailB);
			pstmt.setString(3,team_indexB);
			
			int	ret = pstmt.executeUpdate();
			
			if(ret==1) {
				response.setContentType("application/json");
				PrintWriter out = response.getWriter();
				
				JSONObject obj = new JSONObject();
				obj.put("folder_check",1);
				out.print(obj);
			} 
		}
			catch (SQLException e) {
				e.printStackTrace();
		}

		
		
	
        	
	
	}
}
