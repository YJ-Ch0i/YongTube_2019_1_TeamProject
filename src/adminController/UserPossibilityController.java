package adminController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Controller;
import service.UserService;

public class UserPossibilityController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String u_id = request.getParameter("id");
		UserService service = UserService.getInstance();

		boolean isTrue = service.setTruePossibility(u_id);
		if(isTrue == true) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Possibility True Success!!!')");
			script.println("location.href='/YongTube_Project/page_admin/adminMemberManager.jsp';");
			script.println("</script>");
			script.close();
			return;
		}
		else if(isTrue == false) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Possibility True Failed!!!')");
			script.println("history.back();");
			script.println("</script>");
			script.close();
			return;
		}	
	}

}
