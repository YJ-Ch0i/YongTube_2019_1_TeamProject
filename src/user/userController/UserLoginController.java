package user.userController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.Controller;
import service.UserService;

public class UserLoginController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession(); 	ServletContext context =  request.getServletContext(); 
		String u_id = "";
		String u_pass = "";
		String admin_id = context.getInitParameter("admin_id");
		String admin_pass = context.getInitParameter("admin_pass");
		
		if(request.getParameter("id") != "") {
			u_id = request.getParameter("id");
		}
		if(request.getParameter("passwd") != "") {
			u_pass = request.getParameter("passwd");
		}
		
		UserService service = UserService.getInstance();
		int loginResult = service.userLogin(u_id, u_pass);
		
		if(!u_id.equals(admin_id) || !u_pass.equals(admin_pass))
		{
			if(u_id.equals(admin_id) && !u_pass.equals(admin_pass)) 
			{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('admin PassWord is failed.');");
				script.println("history.back();");
				script.println("</script>");
				script.close();
			}
		}
		else if(u_id.equals(admin_id) && u_pass.equals(admin_pass))
		{
			session.setAttribute("admin_id", admin_id);
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('admin login success.');");
			script.println("location.href='index.jsp';");
			script.println("</script>");
			script.close();
		}
		
		if(loginResult == 1)
		{
			session.setAttribute("u_id", u_id);
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('USER Login Success.');");
			script.println("location.href = 'index.jsp';");
			script.println("</script>");
			script.close();
			return;
		}
		else if(loginResult == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Password failed');");
			script.println("history.back();");
			script.println("</script>");
			script.close();
		}
		else if(loginResult == -1)
		{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('ID is not exist');");
			script.println("history.back();");
			script.println("</script>");
			script.close();
			return;
		}
		else if(loginResult == -2)
		{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('DB ERROR.');");
			script.println("history.back();");
			script.println("</script>");
			script.close();
			return;
		}
	}
}
