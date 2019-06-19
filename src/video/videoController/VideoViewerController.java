package video.videoController;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Controller;
import Util.HttpUtil;

public class VideoViewerController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		/*String v_title = ""; String v_desc = ""; String v_path = "";
		String ch_id = ""; String strTime = ""; Timestamp updated = null;
		int v_id = -1;
		
		if(request.getParameter("vod_title") != "") {
			v_title = request.getParameter("vod_title");
		}
		if(request.getParameter("vod_desc") != "") {
			v_desc = request.getParameter("vod_desc");
		}
		if(request.getParameter("vod_path") != "") {
			v_path = request.getParameter("vod_path");
		}
		if(request.getParameter("vod_chid") != "") {
			ch_id = request.getParameter("vod_chid");
		}
		if(request.getParameter("vod_updated") != "") {
			strTime = request.getParameter("vod_updated");
		}
		if(request.getParameter("vod_id") != "") {
			v_id = Integer.parseInt(request.getParameter("vod_id"));
		}*/
		
		int v_id = Integer.parseInt(request.getParameter("id"));

		String path = "/page_user/videoView.jsp";
		request.setAttribute("v_id", v_id);
		HttpUtil.forward(request, response, path);
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		
		execute(request,response);
	}
}
