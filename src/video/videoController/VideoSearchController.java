package video.videoController;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Controller;
import Util.HttpUtil;
import service.VideoService;
import video.videoDTO.VideoDTO;

public class VideoSearchController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String v_title = request.getParameter("search_title");
		
		ArrayList<VideoDTO> videoList = new ArrayList<>();
		VideoService service = VideoService.getInstance();
		videoList = service.videoSearchAJAX(v_title);
		System.out.println(videoList);
		
		String path = "/page_user/userSearchTitle.jsp";
		
		request.setAttribute("v_title", v_title);
		request.setAttribute("v_list", videoList);
		HttpUtil.forward(request, response, path);
	}
	
	public String getJSON(String v_title) {
		if(v_title == null) v_title = "";
		StringBuffer result = new StringBuffer("");
		result.append("{\"result\":[");
		VideoService service = VideoService.getInstance();
		ArrayList<VideoDTO> videoList = service.videoSearchAJAX(v_title);
		for(VideoDTO dto : videoList) {
			result.append("[{\"value\"; \"" + dto.getV_id() + "\"},");
			result.append("[{\"value\"; \"" + dto.getV_img() + "\"},");
			result.append("[{\"value\"; \"" + dto.getV_title() + "\"},");
			result.append("[{\"value\"; \"" + dto.getUpdated() + "\"},");
			result.append("[{\"value\"; \"" + dto.getV_desc() + "\"}],");			
		}
		result.append("]}");
		return result.toString();
	}
}
