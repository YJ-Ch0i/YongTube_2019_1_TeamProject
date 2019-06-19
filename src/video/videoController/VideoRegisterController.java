package video.videoController;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.Controller;
import service.VideoService;
import video.videoDTO.VideoDTO;

public class VideoRegisterController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		String v_title = ""; String v_path = ""; String v_desc = "";
		String ch_id = "";	String u_id = ""; String v_img = "";
		
		if(request.getParameter("v_title") != null) {
			v_title = request.getParameter("v_title");
		}
		if(request.getParameter("getRealvpath") != null) {
			v_path = request.getParameter("getRealvpath");
		}
		if(request.getParameter("v_img") != null) {
			v_img = request.getParameter("v_img");
		}
		
		if(request.getParameter("v_desc") != null) {
			v_desc = request.getParameter("v_desc");
		}
		else {
			v_desc = "";
		}
		if(request.getParameter("ch_id") != null) {
			ch_id = request.getParameter("ch_id");
		}
		if(session.getAttribute("u_id") != null) {
			u_id = (String) session.getAttribute("u_id");
		}
		
		System.out.println(v_title);
		System.out.println(v_path);
		System.out.println(v_img);
		System.out.println(v_desc);
		System.out.println(ch_id);
		System.out.println(u_id);
		
		//Calendar cal = new GregorianCalendar();
		//Timestamp now = new Timestamp(cal.getTimeInMillis());
		
		Timestamp now_time =new Timestamp(System.currentTimeMillis());
		System.out.println(now_time);
		
		VideoService service = VideoService.getInstance();
		VideoDTO video = new VideoDTO(u_id, v_title, v_desc, v_path, v_img, ch_id, now_time);
		System.out.println(video);
		
		boolean isRegist = service.videoRegister(video);
		System.out.println(isRegist);
		
		if(isRegist == true) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Video Regist Success!!!')");
			script.println("location.href='/YongTube_Project/page_user/userChannel.jsp';");
			script.println("</script>");
			script.close();
			return;
		}
		else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Video Regist Failed!!!')");
			script.println("history.back();");
			script.println("</script>");
			script.close();
			return;
		}
	}
}
