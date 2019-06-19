package adminController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Controller;
import service.VideoService;

public class AdminVideoDeleteController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		int v_id = Integer.parseInt(request.getParameter("id"));
		
		VideoService service = VideoService.getInstance();
		
		boolean isDelete = service.videoDelete(v_id);
		
		if(isDelete == true) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Video Delete Success!!!')");
			script.println("location.href='/YongTube_Project/page_admin/adminVideoManager.jsp';");
			script.println("</script>");
			script.close();
			return;
		}
		else if(isDelete == false) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Video Delete Failed!!!')");
			script.println("history.back();");
			script.println("</script>");
			script.close();
			return;
		}	
	}

}
