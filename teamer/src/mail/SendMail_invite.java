package mail;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail_invite {
	public static void send(String[] inviteEmailArr) {
        Properties p = System.getProperties();
        p.put("mail.smtp.starttls.enable", "true");     // gmail�� true ����
        p.put("mail.smtp.host", "smtp.naver.com");      // smtp ���� �ּ�
        p.put("mail.smtp.auth","true");                 // gmail�� true ����
        p.put("mail.smtp.port", "465");                 // ���̹� ��Ʈ
       // p.put("mail.smtp.port", "465");                 // ���̹� ��Ʈ
        p.put("mail.smtp.ssl.enable", "true");
        p.put("mail.smtp.ssl.trust", "smtp.naver.com");
        p.put("mail.smtp.ssl.protocols", "TLSv1.2");

		p.put("mail.smtp.socketFactory.port", "465");
		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.socketFactory.fallback", "false");
		p.put("mail.transport.protocol", "smtp");
        
        Authenticator auth = new MyAuthentication();
        //session ���� ��  MimeMessage����
        Session session = Session.getDefaultInstance(p, auth);
        MimeMessage msg = new MimeMessage(session);
        for(int i=0; i<inviteEmailArr.length; i++) {
        try{
            //���������ð�
            msg.setSentDate(new Date());
            InternetAddress from = new InternetAddress() ;
            from = new InternetAddress("teamerkorea@naver.com","TEAMER Co","UTF-8");   // chae@naver.com"); //�߽��� ���̵�
            // �̸��� �߽���
            msg.setFrom(from);
            // �̸��� ������
            InternetAddress to = new InternetAddress(inviteEmailArr[i]);
            msg.setRecipient(Message.RecipientType.TO, to);
            // �̸��� ����
            msg.setSubject("Ƽ�ӷκ��� �ʴ������ �����̽��ϴ�!", "UTF-8");
            // �̸��� ����
            // msg.setText(name+" �� �ȳ��ϼ���, ������ȣ�� " + randomnum + " �Դϴ�.", "UTF-8");
           
            // �׽�Ʈ
              msg.setContent(
            		  "<div style = \"border : 1px solid #227bf0 ;width:300px; border-radius: 15px\"><img src = \"https://postfiles.pstatic.net/MjAyMTEyMjBfMTE4/MDAxNjM5OTY1MjMxMDcz.Ts4xJGclUxJf7wl5Irvtump03rtwf2Io7sbIeVntqQwg.gc7-Mz4wpWdJ1JHBhO84upkl3L7ID9-ljNo45KCuDYgg.PNG.swc01057/teamer_logo.png?type=w966\">"
            		  +"<br><h2 style=\"font-family : Georgia, 'Times New Roman', Times, serif; color: #227bf0; \">HELLO, WE ARE TEAMER!</h2>"
            		  +"<h3> <span style = \"color : blue\"> </span> <a href = \"teamer1.jsp\"> �ʴ� �����ϱ� </a> <br>"
            		  +"</span></h3></div>" 
            		  ,"text/html;charset=UTF-8");
            
            // �̸��� ���
            msg.setHeader("content-Type", "text/html");
            //���Ϻ�����
            javax.mail.Transport.send(msg, msg.getAllRecipients());
             
        }catch (AddressException addr_e) {
            addr_e.printStackTrace();
        }catch (MessagingException msg_e) {
            msg_e.printStackTrace();
        }catch (Exception msg_e) {
            msg_e.printStackTrace();
        }
        }
    }
}
