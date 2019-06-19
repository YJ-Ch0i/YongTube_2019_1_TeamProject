package adminController;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import Controller.Controller;


public class FrontController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	HashMap<String, Controller> list = null;
	
	public void init(ServletConfig config) throws ServletException {
		
		list = new HashMap<String, Controller>();
		list.put("/UserPossibility.ad", new UserPossibilityController());
		list.put("/AdminVideoDelete.ad", new AdminVideoDeleteController());
		list.put("/UserImpossibility.ad", new UserImpossibilityController());
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