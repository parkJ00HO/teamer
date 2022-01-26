package com.teamer.vo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/broadcasting") // Ŭ���̾�Ʈ���� ������ ������ �ּҸ� ������.
public class BroadSocket {
	private static Set<Session> clients = Collections.synchronizedSet(new HashSet<Session>());

	@OnMessage // Ŭ���̾�Ʈ�κ��� �޽����� �������� ��.
	public void onMessage(String message, Session session) throws IOException, ClassNotFoundException, SQLException {
		System.out.println("from client : " + message);
		// message |�� ���ø� -> �տ��� ���̵� �����ϰ� �ڿ��� m_content�� ����
		String whole_message = message;
		String splitMessage = "//.\\$/";
		String[] messageArr = whole_message.split(splitMessage);
		String id = messageArr[0];
		System.out.println(id);
		String content = messageArr[1];
		System.out.println(content);
		String date = messageArr[2];
		System.out.println(date);
		String time = messageArr[3];
		System.out.println(time);
		String topic_id = messageArr[4];
		System.out.println(topic_id);
		String p_url_image = messageArr[5];
		System.out.println(p_url_image);
		String profile_pic = messageArr[6];
		System.out.println(profile_pic);
		// LocalDate now = LocalDate.now();

		// jdbc

		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "topic12";
		String db_pw = "user1234";

		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url, db_id, db_pw);

		Scanner sc = new Scanner(System.in);

		
		 String sql =
		 "INSERT INTO MESSAGE (M_CONTENT, M_W_EMAIL, M_DATE, M_TIME, M_NOTIFY, M_ID, M_MENTIONKEY, M_FILEKEY, M_T_ID) "
		 +"VALUES (?,?,?,?,0,'M'||MESSAGE_SEQ.NEXTVAL,0,0,?)"; 
		 PreparedStatement pstmt = conn.prepareStatement(sql); 
		 pstmt.setString(1, content);
		 pstmt.setString(2, id); 
		 pstmt.setString(3, date); 
		 pstmt.setString(4, time);
		 pstmt.setString(5, topic_id);
		 
		 pstmt.executeUpdate();

		synchronized (clients) {
			for (Session client : clients) {
				if (!client.equals(session)) {
					client.getBasicRemote().sendText(message);
				}
			}
		}
	}

	@OnOpen // Ŭ���̾�Ʈ�� ������ �������� ��.
	public void onOpen(Session session) {
		System.out.println(session);
		clients.add(session);
	}

	@OnClose // Ŭ���̾�Ʈ�� ������ ������ ��.
	public void onClose(Session session) {
		clients.remove(session);
	}
}
