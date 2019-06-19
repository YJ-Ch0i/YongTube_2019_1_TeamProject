package Util;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HttpUtil {

	public static void forward(HttpServletRequest request, HttpServletResponse response, String path) throws ServletException, IOException{
		try {
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
	}
}
