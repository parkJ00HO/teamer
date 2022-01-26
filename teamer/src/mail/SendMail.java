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

public class SendMail {
	
    public static void send(String email, String name, String randomnum) {
        Properties p = System.getProperties();
        p.put("mail.smtp.starttls.enable", "true");     // gmail은 true 고정
        p.put("mail.smtp.host", "smtp.naver.com");      // smtp 서버 주소
        p.put("mail.smtp.auth","true");                 // gmail은 true 고정
        p.put("mail.smtp.port", "465");                 // 네이버 포트
       // p.put("mail.smtp.port", "465");                 // 네이버 포트
        p.put("mail.smtp.ssl.enable", "true");
        p.put("mail.smtp.ssl.trust", "smtp.naver.com");
        p.put("mail.smtp.ssl.protocols", "TLSv1.2");

		p.put("mail.smtp.socketFactory.port", "465");
		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.socketFactory.fallback", "false");
		p.put("mail.transport.protocol", "smtp");
        
        Authenticator auth = new MyAuthentication();
        //session 생성 및  MimeMessage생성
        Session session = Session.getDefaultInstance(p, auth);
        MimeMessage msg = new MimeMessage(session);
        try{
            //편지보낸시간
            msg.setSentDate(new Date());
            InternetAddress from = new InternetAddress() ;
            from = new InternetAddress("teamerkorea@naver.com","TEAMER Co","UTF-8");   // chae@naver.com"); //발신자 아이디
            // 이메일 발신자
            msg.setFrom(from);
            // 이메일 수신자
            InternetAddress to = new InternetAddress(email);
            msg.setRecipient(Message.RecipientType.TO, to);
            // 이메일 제목
            msg.setSubject("티머 인증번호", "UTF-8");
            // 이메일 내용
            // msg.setText(name+" 님 안녕하세요, 인증번호는 " + randomnum + " 입니다.", "UTF-8");
           
            // 테스트
              msg.setContent(
            		  "<div style = \"border : 1px solid #227bf0 ;width:300px; border-radius: 15px\"><img src = \"https://postfiles.pstatic.net/MjAyMTEyMjBfMTE4/MDAxNjM5OTY1MjMxMDcz.Ts4xJGclUxJf7wl5Irvtump03rtwf2Io7sbIeVntqQwg.gc7-Mz4wpWdJ1JHBhO84upkl3L7ID9-ljNo45KCuDYgg.PNG.swc01057/teamer_logo.png?type=w966\">"
            		  +"<br><h2 style=\"font-family : Georgia, 'Times New Roman', Times, serif; color: #227bf0; \">HELLO, WE ARE TEAMER!</h2>"
            		  +"<h3> <span style = \"color : blue\">"+ name +"</span> 님 안녕하세요, <br>"
            		  +" 인증번호는 <span style = \"color : blue\">"+ randomnum +"</span> 입니다.</h3></div>" 
            		  ,"text/html;charset=UTF-8");
            
            // 이메일 헤더
            msg.setHeader("content-Type", "text/html");
            //메일보내기
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
