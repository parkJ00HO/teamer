package com.teamer.vo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/folder_name_change")
public class folder_name_change extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      }
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("_________________________________");
      
      String f_name=request.getParameter("folder_name");
      String f_index=request.getParameter("folder_index");
      
      System.out.println(f_name+f_index);
      String driver = "oracle.jdbc.driver.OracleDriver"; 
      String url = "jdbc:oracle:thin:@localhost:1521:xe";
  	String db_id = "topic12";
  	String db_pw = "user1234";
      
      
      Connection conn = null;
      try { Class.forName(driver); 
      conn=DriverManager.getConnection(url, db_id, db_pw);
      
      String sql = "update folders set f_name=? where f_index = ?";
      PreparedStatement pstmt =conn.prepareStatement(sql);
      pstmt.setString(1, f_name);
      pstmt.setString(2, f_index);
      pstmt.executeUpdate();
      
      }catch(Exception e) {
         e.printStackTrace(); 
      }
   }

}