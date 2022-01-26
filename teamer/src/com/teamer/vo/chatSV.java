package com.teamer.vo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/chatSV")
public class chatSV extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
   
//   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      String[] chat_name = request.getParameterValues("chat_name");
      String[] chat_email = request.getParameterValues("chat_email");
      String t_id_park = request.getParameter("t_id_park");
//      System.out.println(Arrays.toString(chat_name));
      

      	String driver = "oracle.jdbc.driver.OracleDriver";
      	String url = "jdbc:oracle:thin:@localhost:1521:xe";
    	String db_id = "topic12";
    	String db_pw = "user1234";
		

		String ch = "update";
		
		Connection conn = null;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, db_id, db_pw);
		} catch(Exception e) {   // ClassNotFoundException, SQLException
			e.printStackTrace();
		}
         
         String names = "";
         String emails = "";
         for(int i=0; i<=chat_name.length-1; i++) 
            names += chat_name[i] + (i<chat_name.length-1 ? "," : "");
         for(int i=0; i<=chat_email.length-1; i++)
            emails += chat_email[i] + (i<chat_email.length-1 ? "_" : "");
         
         //�մ��� ������ �Ǵ�
         String sql="select count(t_name) from topic where t_name=?";
         PreparedStatement pstmt; 
         try {
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1, names);
            ResultSet rs=pstmt.executeQuery();
            int ret = 0;
            while(rs.next()) {
               ret=rs.getInt(1);
            }
            if(ret!=0) {
               ch="�̹� ä�ù��� �ֽ��ϴ�";
            }else if(ret==0){
               sql =
                     "insert into topic(t_id,t_name,t_public,t_member,t_bookmark,t_t_index)"
                           +" values('C' || TOPIC_SEQ.nextval,?,0,?,0,?)";
               
               try { 
                  pstmt = conn.prepareStatement(sql);
                  pstmt.setString(1, names); 
                  pstmt.setString(2, emails); 
                  pstmt.setString(3, t_id_park); 
                  int ret1 =pstmt.executeUpdate();
                  
                  pstmt.close();
               }catch (SQLException e) { e.printStackTrace(); }
               
            }
            
            
         } catch (SQLException e) {
            e.printStackTrace();
         }
         
         PrintWriter out = response.getWriter();
         out.print(ch);
         
         //�߰����ִ�
   }

}