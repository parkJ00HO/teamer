package com.teamer.vo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/dragServlet")
public class dragServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public dragServlet() {
    }

//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		/*
-- (1)
select f_index from folders where f_name='mama';
select t_id from topic where t_name='bob';

-- (2)
insert into folder_topic(f_index_2, f_topic_id) values(f_index, t_id);

-- (3)
delete from topic where t_name='bob';
		 */
		request.setCharacterEncoding("utf-8");
		String topic_name_to_move = request.getParameter("topic_name_to_move");
		String folder_name_arrived = request.getParameter("folder_name_arrived");
		folder_name_arrived = folder_name_arrived.replaceAll("(\r\n|\r|\n|\n\r)", "");
		folder_name_arrived = folder_name_arrived.replaceAll(" ", "");  // 절대로 건드리지 말것. 우리가 아는 띄어쓰기가 아님.
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "topic12";
		String db_pw = "user1234";
		
		 Connection conn = null;
		    try{
		       Class.forName(driver);
		        conn = DriverManager.getConnection(url,db_id,db_pw);
	        }catch(Exception e){
		         e.printStackTrace();
		     }

		String sql = "";
	    PreparedStatement pstmt = null;
		ResultSet rs = null;

		// (1)
	    String f_index = "";
	    try {
	    	
	    	sql = "select f_index from folders where f_name='"+folder_name_arrived.trim()+"'";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				f_index = rs.getString(1);
			}
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	    String t_id = "";
	    try {
	    	sql = "select t_id from topic where t_name=?";
	    	pstmt = conn.prepareStatement(sql);
	    	pstmt.setString(1,topic_name_to_move.trim());
	    	rs = pstmt.executeQuery();
	    	if(rs.next()) {
	    		t_id = rs.getString(1);
	    	}
	    	rs.close();
	    	pstmt.close();
	    } catch(SQLException e) {
	    	e.printStackTrace();
	    }
	    

	    
	    try {
	    	sql = "delete from folder_topic where f_topic_id=?";
	    	pstmt = conn.prepareStatement(sql);
	    	pstmt.setString(1, t_id);
	    	int result= pstmt.executeUpdate();
	    	if(result==1) 
	    		System.out.println("토픽을 폴더에서 삭제 성공!");
    	} catch(SQLException e) {
    		e.printStackTrace();
    	}
	    	
	    try {
	    	sql = "insert into folder_topic(f_index_2, f_topic_id) values(?, ?)";
	    	pstmt = conn.prepareStatement(sql);
	    	pstmt.setString(1, f_index);
	    	pstmt.setString(2, t_id);
	    	int result= pstmt.executeUpdate();
	    	if(result==1) 
	    		System.out.println("토픽을 폴더에 삽입 성공!");
	    	pstmt.close();
    	} catch(SQLException e) {
    		e.printStackTrace();
    	}
	    
//	    
		    
		    
	}

}
