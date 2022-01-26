package com.teamer.vo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ChatServlet")
public class ChatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String topic_name = request.getParameter("topic_name");
		String team_index = request.getParameter("team_index");
		String login_email = request.getParameter("login_email");
		
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "topic12";
		String db_pw = "user1234";
		
		String t_name = "";
		String t_index = "";
		
		Connection conn = null;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, db_id, db_pw);
		} catch(Exception e) {   // ClassNotFoundException, SQLException
			e.printStackTrace();
		}
		
		
		String sql = "select t_id from topic where t_name = ? and t_t_index = ?";
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, topic_name);
			pstmt.setString(2, team_index);
			ResultSet rs = pstmt.executeQuery();
			String topic_id = "";
			if(rs.next()){
				topic_id = rs.getString(1);
			}
			
			
			ArrayList<messageVO> m_list = new ArrayList<messageVO>();
			sql = "select * from message where m_t_id = ?";
			PreparedStatement pstmt2 = conn.prepareStatement(sql);
			pstmt2.setString(1, topic_id); 
			System.out.println(topic_id);
			String m_content = "";
			String m_w_email = "";
			String m_date = "";
			String m_time = "";
			int m_notify;
			String m_id = "";
			int m_mentionkey;
			String m_filekey = "";
			String m_t_id = "";
			ResultSet rs1 = pstmt2.executeQuery();
			int count = 0;
			while(rs1.next()){
				m_content = rs1.getString("m_content");
				m_w_email = rs1.getString("m_w_email");
				m_date = rs1.getString("m_date");
				m_time = rs1.getString("m_time");
				m_notify = rs1.getInt("m_notify");
				m_id = rs1.getString("m_id");
				m_mentionkey = rs1.getInt("m_mentionkey");
				m_filekey = rs1.getString("m_filekey");
				m_t_id = rs1.getString("m_t_id");
				m_list.add(new messageVO(m_content,m_w_email,m_date,m_time,m_notify,m_id,m_mentionkey,m_filekey,m_t_id));
				count ++;
				
				RequestDispatcher rd = request.getRequestDispatcher("mainpage.jsp");
				// �� response�� �ƴϰ� request�ϱ�(�����������Ϸ�)
				request.setAttribute("m_content", m_list.get(0).getM_content()); 	/*  sum�� request�� ������ �ƴ� �׷��� ~ */
				
				rd.forward(request, response);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	}
}
