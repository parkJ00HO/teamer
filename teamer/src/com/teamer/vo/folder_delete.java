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


@WebServlet("/folder_delete")
public class folder_delete extends HttpServlet {
   private static final long serialVersionUID = 1L;
       

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String folder_name=request.getParameter("folder_name");
      
       String driver = "oracle.jdbc.driver.OracleDriver"; 
       String url = "jdbc:oracle:thin:@localhost:1521:xe";
	   	String db_id = "topic12";
	   	String db_pw = "user1234";
        
      
         Connection conn = null;
         try { Class.forName(driver); 
         conn=DriverManager.getConnection(url, db_id, db_pw); 
         
         String sql="select f_index from folders where f_name=?";
         PreparedStatement pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, folder_name);
         ResultSet rs = pstmt.executeQuery();
         String folder_index = null ;
         while(rs.next()) {
            folder_index=rs.getString("f_index");
         }
         
         sql = "delete from folders where f_name=?";
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, folder_name);
         pstmt.executeUpdate();
         
         
         sql="update folder_topic set f_index_2=null where f_index_2 = ?";
         pstmt =conn.prepareStatement(sql);
         pstmt.setString(1, folder_index);
         pstmt.executeUpdate();
         
         
         }catch(Exception e) {
            e.printStackTrace(); 
            }
      
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//      doGet(request, response);
      
      
         
         
      
         
   }

}