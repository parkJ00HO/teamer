//package mail;
//
//import java.util.Date;
//import java.util.Properties;
//import javax.mail.Authenticator;
//import javax.mail.Message;
//import javax.mail.MessagingException;
//import javax.mail.PasswordAuthentication;
//import javax.mail.Session;
//import javax.mail.internet.AddressException;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;
// 
//public class MailTest {
//	public String s = "�ȳ�";
// 
//    public static void main(String[] args) {
//        Properties p = System.getProperties();
//        p.put("mail.smtp.starttls.enable", "true");     // gmail�� true ����
//        p.put("mail.smtp.host", "smtp.naver.com");      // smtp ���� �ּ�
//        p.put("mail.smtp.auth","true");                 // gmail�� true ����
//        p.put("mail.smtp.port", "465");                 // ���̹� ��Ʈ
//       // p.put("mail.smtp.port", "465");                 // ���̹� ��Ʈ
//        p.put("mail.smtp.ssl.enable", "true");
//        p.put("mail.smtp.ssl.trust", "smtp.naver.com");
//        p.put("mail.smtp.ssl.protocols", "TLSv1.2");
//
//		p.put("mail.smtp.socketFactory.port", "465");
//		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
//		p.put("mail.smtp.socketFactory.fallback", "false");
//		p.put("mail.transport.protocol", "smtp");
//        
//        Authenticator auth = new MyAuthentication();
//        //session ���� ��  MimeMessage����
//        Session session = Session.getDefaultInstance(p, auth);
//        MimeMessage msg = new MimeMessage(session);
//         
//        try{
//            //���������ð�
//            msg.setSentDate(new Date());
//            InternetAddress from = new InternetAddress() ;
//            from = new InternetAddress("swc01057@naver.com");   // chae@naver.com"); //�߽��� ���̵�
//            // �̸��� �߽���
//            msg.setFrom(from);
//            // �̸��� ������
//            InternetAddress to = new InternetAddress("swc01057@naver.com");
//            msg.setRecipient(Message.RecipientType.TO, to);
//            // �̸��� ����
//            msg.setSubject("���� ���� �׽�Ʈ", "UTF-8");
//            // �̸��� ����
//            msg.setText("Ƽ���丮 �׽�Ʈ", "UTF-8");
//            // �̸��� ���
//            msg.setHeader("content-Type", "text/html");
//            //���Ϻ�����
//            javax.mail.Transport.send(msg, msg.getAllRecipients());
//             
//        }catch (AddressException addr_e) {
//            addr_e.printStackTrace();
//        }catch (MessagingException msg_e) {
//            msg_e.printStackTrace();
//        }catch (Exception msg_e) {
//            msg_e.printStackTrace();
//        }
//    }
//}
// 
//class MyAuthentication extends Authenticator {
//      
//    PasswordAuthentication pa;
//    public MyAuthentication(){
//         
//        String id = "swc01057"; // @naver.com";  //���̹� �̸��� ���̵�
//        String pw = "��й�ȣ486";        //���̹� ��й�ȣ
// 
//        // ID�� ��й�ȣ�� �Է��Ѵ�.
//        pa = new PasswordAuthentication(id, pw);
//    }
// 
//    // �ý��ۿ��� ����ϴ� ��������
//    public PasswordAuthentication getPasswordAuthentication() {
//        return pa;
//    }
//} 
//  