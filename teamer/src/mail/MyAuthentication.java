package mail;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MyAuthentication extends Authenticator {
	      
    PasswordAuthentication pa;
    public MyAuthentication(){
         
        String id = "teamerkorea@naver.com"; // @naver.com";  //���̹� �̸��� ���̵�
        String pw = "xlajeoqkr!97";        //���̹� ��й�ȣ
 
        // ID�� ��й�ȣ�� �Է��Ѵ�.
        pa = new PasswordAuthentication(id, pw);
    }
 
    // �ý��ۿ��� ����ϴ� ��������
    public PasswordAuthentication getPasswordAuthentication() {
        return pa;
    }
	  
}
