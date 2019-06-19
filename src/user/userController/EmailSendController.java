package user.userController;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.Controller;
import Util.Gmail;
import Util.SHA256;
import service.UserService;

public class EmailSendController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		UserService dao = UserService.getInstance();
		HttpSession session = request.getSession();
		String u_id = null;
		if(session.getAttribute("u_id") != null)
		{
			u_id = (String) session.getAttribute("u_id");
		}
		if(u_id == null)
		{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 해주세요.');");
			script.println("location.href = 'index.jsp'");
			script.println("</script>");
			script.close();
			return;
		}

		//Timestamp curTime = new Timestamp(System.currentTimeMillis());
		boolean emailChecked = dao.getEamilChecked(u_id);
		if(emailChecked == true)
		{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('인증을 완료 한 계정입니다.');");
			script.println("location.href = 'YongTube_Project/userLogin.jsp'");
			script.println("</script>");
			script.close();
			return;
		}
		
		String host = "http://localhost:8080/YongTube_Project/";
		String href = "EmailCheckAction.us";
		String from = "yeong_4310@yi.ac.kr";				//구글 이메일 계정
		String to = u_id;
		String subject = "인증 메일입니다.";
		String content = "다음 링크에 접속하여 인증을 진행 해 주세요." + "<a href='" + host + href + "?code=" + new SHA256().getSHA256(to) + "'>이메일 인증하기</a>";
							
		Properties p = new Properties();
		p.put("mail.smtp.user", from);
		p.put("mail.smtp.host", "smtp.gmail.com");
		p.put("mail.smtp.port", "465");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.debug", "true");
		p.put("mail.smtp.socketFactory.port", "465");
		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.socketFactory.fallback", "false");
		
		try
		{
			Authenticator auth = new Gmail();
		    Session ses = Session.getInstance(p, auth);
		    ses.setDebug(true);
		    MimeMessage msg = new MimeMessage(ses); 
		    msg.setSubject(subject);
		    Address fromAddr = new InternetAddress(from);
		    msg.setFrom(fromAddr);
		    Address toAddr = new InternetAddress(to);
		    msg.addRecipient(Message.RecipientType.TO, toAddr);
		    msg.setContent(content, "text/html;charset=UTF-8");
		    Transport.send(msg);
		    
		    PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Please Email Check!!.');");
			script.println("location.href = 'index.jsp'");
			script.println("</script>");
			script.close();
			return;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Error!!!!!');");
			script.println("history.back();");
			script.println("</script>");
			script.close();
			return;
		}
	}
}
