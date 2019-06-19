package user.userController;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.Controller;
import Util.HttpUtil;
import Util.SHA256;
import service.UserService;
import user.userDTO.UserDTO;

public class UserRegistController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(); 	 String tea_name="";
		String u_mail = ""; String u_pass = ""; String u_rePass = "";
		String u_name = ""; String u_alias = "";
		
		if(request.getParameter("mail") !=""){
			u_mail = (String) request.getParameter("mail");
		}
		if(request.getParameter("passwd") !=""){
			u_pass = (String) request.getParameter("passwd");
		}
		if(request.getParameter("re-password") !=""){
			u_rePass = (String) request.getParameter("re-password");
		}
		if(request.getParameter("name") !=""){
			u_name = (String) request.getParameter("name");
		}
		if(request.getParameter("u_alias") !=""){
			u_alias = (String) request.getParameter("u_alias");
		}
		
		Calendar cal = new GregorianCalendar();		//날짜 객체 생성을 위한 calendar
		Date date = new Date(cal.getTimeInMillis()); //현재의 날짜 객체
		UserService service = UserService.getInstance();
		boolean isRegist = service.isUserRegist(u_mail);
		
		System.out.println(date);
		System.out.println(isRegist);
		String def = "def info";
		
		if(isRegist==true&&u_pass.equals(u_rePass)){
			
			UserDTO user = new UserDTO(u_mail, u_pass, u_name, u_alias, def, SHA256.getSHA256(u_mail), false, date, true);
			
			int result = service.userRegister(user);
			System.out.println(result);
			if(result==1){
				session.setAttribute("u_id", u_mail);
				//String path = "/YongTube_Project/EmailSendAction.us";
				//HttpUtil.forward(request, response, path);
				response.sendRedirect("/YongTube_Project/EmailSendAction.us");
			}
		}
		else if(isRegist==false)
		{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('This Email is Registed!!')");
			script.println("history.back();");
			script.println("</script>");
			script.close();
			return;
		}
		else if(!u_pass.equals(u_rePass)) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Please Password & rePassword Check!!!')");
			script.println("history.back();");
			script.println("</script>");
			script.close();
			return;
		}
	}
}
