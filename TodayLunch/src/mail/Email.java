package mail;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import beans.ForgetInfoDAO;

public class Email {
		
	
	
	public void EmailSubmit(String email,String id,String passwd) {
		
		//String from = request.getParameter("from");
		String from = "todaylunchtest@gmail.com"; // 보내는이 // 고정임
		String to = email;//request.getParameter("email"); // 받는사람 // 전달받아야 할 값 
		//String subject = request.getParameter("subject");
		String subject = "TodayLunch 비밀번호 찾기 결과입니다."; //제목
		//String content = request.getParameter("content");
		//String content = "<a href='http://localhost:8080/TodayLunch/register/emailCheck?p_id="+p_id+"&p_siknum="+p_siknum+"'>인증 확인 링크</a> 링크를 눌러 인증을 완료하여주세요.";

		String content = id+"님의 비밀번호는 ";
		content+= passwd+" 입니다";

		// 내용

		/* 
		request.setAttribute();
		링크열 ? 변수=값 get방식
		*/
		 
		Properties p = new Properties(); // 정보를 담을 객체
		 
		p.put("mail.smtp.host","smtp.gmail.com"); // 네이버 SMTP
		p.put("mail.transport.protocol", "smtp");
		p.put("mail.smtp.port", "465");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.debug", "true");
		p.put("mail.smtp.socketFactory.port", "465");
		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.socketFactory.fallback", "false");
		p.put("mail.smtp.auth", "true");

		/*

		props.put("mail.transport.protocol", "smtp");
		      props.put("mail.smtp.host", "smtp.gmail.com");
		      props.put("mail.smtp.port", "465");
		      props.put("mail.smtp.starttls.enable", "true");
		      props.put("mail.smtp.socketFactory.port", "465");
		      props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		      props.put("mail.smtp.socketFactory.fallback", "false");
		      props.put("mail.smtp.auth", "true");

		*/
		// SMTP 서버에 접속하기 위한 정보들
		 
		try{
		    Authenticator auth = new SMTPAuthenticatior();
		    Session ses = Session.getInstance(p, auth);
		     
		    ses.setDebug(true);
		     
		    MimeMessage msg = new MimeMessage(ses); // 메일의 내용을 담을 객체
		    msg.setSubject(subject); // 제목
		     
		    Address fromAddr = new InternetAddress(from);
		    msg.setFrom(fromAddr); // 보내는 사람
		     
		    Address toAddr = new InternetAddress(to);
		    msg.addRecipient(Message.RecipientType.TO, toAddr); // 받는 사람
		     
		    msg.setContent(content, "text/html;charset=UTF-8"); // 내용과 인코딩
		     
		    Transport.send(msg); // 전송
		} catch(Exception e){
		    e.printStackTrace();
		    
		    // 오류 발생시 뒤로 돌아가도록
		    return;
		}
	}
}
