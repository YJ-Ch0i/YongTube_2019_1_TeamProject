package user.userController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.Controller;

public class UserLogoutController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		
		if(session.getAttribute("admin_id") != null) {
			//session.removeAttribute("admin_id");
			session.invalidate();
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Admin Logout Success!');");
			script.println("location.href='index.jsp';");
			script.println("</script>");
			script.close();
		}
		else if(session.getAttribute("u_id") != null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert(' User LogOut!');");
			script.println("location.href='index.jsp';");
			script.println("</script>");
			script.close();
			session.invalidate();
		}
		else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('No Session.');");
			script.println("history.back();");
			script.println("</script>");
			script.close();
		}
	}
}
