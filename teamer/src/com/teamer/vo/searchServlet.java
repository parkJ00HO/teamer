package com.teamer.vo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

@WebServlet("/searchServlet")
public class searchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public searchServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "topic12";
		String db_pw = "user1234";
		request.setCharacterEncoding("utf-8");
		
		
		String search_content = request.getParameter("search_content");
		String t_index = request.getParameter("t_index");
	
		
		//System.out.print(search_content);
		
		JSONArray messageSearch = new JSONArray();
		
		Connection conn = null;
		String sql="";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		    try{
		       Class.forName(driver);
		       conn = DriverManager.getConnection(url,db_id,db_pw);
	        }catch(Exception e){
		         e.printStackTrace();
		     }
		    
		    
		    String m_content="";
		    String m_date="";
		    String mem_name="";
		    String t_name="";
		    String p_image="";
		    
		    try {
		    	if(search_content.equals("")) {
		    		
		    	}
		    	else {
			    	sql="select mes.m_content, mem.mem_name, mes.m_date, top.t_name, pro.p_image " + 
			    			"from members mem, message mes, topic top, profile pro " + 
			    			"where mem.mem_email = mes.m_w_email and mes.m_t_id = top.t_id and pro.p_email = mes.m_w_email " + 
			    			"and top.t_t_index = pro.p_t_index " +
			    			"and mes.m_content like ? and t_t_index= ?";
			    	pstmt = conn.prepareStatement(sql);
					pstmt.setString(1,"%"+search_content+"%");
					pstmt.setString(2, t_index);
					rs = pstmt.executeQuery();
					while(rs.next()) {
						m_content = rs.getString("m_content");
						mem_name = rs.getString("mem_name");
						m_date = rs.getString("m_date");
						t_name = rs.getString("t_name");
						p_image = rs.getString("p_image");
						JSONObject jobj = new JSONObject();
						jobj.put("m_content", m_content);
						jobj.put("mem_name", mem_name);
						jobj.put("m_date", m_date);
						jobj.put("t_name", t_name);
						jobj.put("p_image", p_image);
						messageSearch.add(jobj);
						
						}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		    
		    
		    
		    
		    response.setContentType("application/json; charset=utf-8");
		    PrintWriter out = response.getWriter();
		    messageSearch.add(search_content);
		    out.print(messageSearch);
		    //System.out.println(messageSearch);
	}	
	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//	}

}
