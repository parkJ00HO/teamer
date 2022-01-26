package Ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

@WebServlet("/PronounceServlet")
public class PronounceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String update_pron = request.getParameter("update_pron");
		String p_t_index = request.getParameter("p_t_index");
		String p_email = request.getParameter("p_email");
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "topic12";
		String db_pw = "user1234";
		
		Connection conn = null;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, db_id, db_pw);
		} catch(Exception e) {   // ClassNotFoundException, SQLException
			e.printStackTrace();
		}
		
		String sql = "UPDATE PROFILE SET P_PRONOUNCE = ? WHERE P_EMAIL = ? AND P_T_INDEX = ?";
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, update_pron);
			pstmt.setString(2, p_email);
			pstmt.setString(3, p_t_index);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		try {
			int ret = pstmt.executeUpdate();
			if(ret==1) {
				System.out.println("update complete!!!");
				response.setContentType("application/json");
				PrintWriter out = response.getWriter();
				
				JSONObject obj = new JSONObject();
				obj.put("updatepron",update_pron);
				out.print(obj);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		
		
	      
	      
	
	}

}
