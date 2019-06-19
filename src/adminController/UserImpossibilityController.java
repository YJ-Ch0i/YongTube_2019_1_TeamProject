package adminController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Controller;
import service.UserService;

public class UserImpossibilityController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String u_id = request.getParameter("id");
		UserService service = UserService.getInstance();
		
		boolean isFalse = service.setFalsePossibility(u_id);
		if(isFalse == true) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Possibility False Success!!!')");
			script.println("location.href='/YongTube_Project/page_admin/adminMemberManager.jsp';");
			script.println("</script>");
			script.close();
			return;
		}
		else if(isFalse == false) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Possibility False Failed!!!')");
			script.println("history.back();");
			script.println("</script>");
			script.close();
			return;
		}	
	}

}
