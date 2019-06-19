package user.userController;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Controller;


public class FrontController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	HashMap<String, Controller> list = null;
	
	public void init(ServletConfig config) throws ServletException {
		
		list = new HashMap<String, Controller>();
		list.put("/UserRegist.us", new UserRegistController());
		list.put("/UserLogin.us", new UserLoginController());
		list.put("/UserLogout.us", new UserLogoutController());
		list.put("/EmailSendAction.us", new EmailSendController());
		list.put("/EmailCheckAction.us", new EamilCheckController());
		list.put("/UserVideoDelete.us", new VideoDeleteController());
		}
		
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  response.setCharacterEncoding("UTF-8");  request.setCharacterEncoding("UTF-8");
		  String url = request.getRequestURI();
		  String contextPath = request.getContextPath();
		  String path = url.substring(contextPath.length());
		 
		  Controller subController = list.get(path);
		  subController.execute(request, response);
	}
}