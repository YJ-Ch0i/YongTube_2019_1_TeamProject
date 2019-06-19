package user.userController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.Controller;
import Util.SHA256;
import service.ChannelService;
import service.PlaylistService;
import service.UserService;
import user.userDTO.UserDTO;

public class EamilCheckController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String code = null;
		if(request.getParameter("code") != null)
		{
			code = request.getParameter("code");
		}
		
		String u_id = null;
		if(session.getAttribute("u_id") != null)
		{
			u_id = (String) session.getAttribute("u_id");
		}

		System.out.println("u_id :: " + u_id);
		if(u_id == null)	//로그인 안함
		{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Login Plz');");
			script.println("location.href = 'index.jsp'");
			script.println("</script>");
			script.close();
			return;
		}
		
		
		UserService userService = UserService.getInstance();
		PlaylistService playService = PlaylistService.getInstance();
		ChannelService channelService = ChannelService.getInstance();
		
		UserDTO user = userService.getUser(u_id);
		
		System.out.println("닉네임 : " + user.getU_alias());
		String u_alias = user.getU_alias();
		String pl_id = u_alias + "\'s PlayList";
		String ch_id = u_alias + "\' Channel";
		
		String u_email = u_id;
		System.out.println("user_email :: " + u_email);
		boolean isRight = (new SHA256().getSHA256(u_email).equals(code)) ? true : false;
		if(isRight == true)
		{
			userService.setEmailCheck(u_id, pl_id);
			playService.playListRegist(pl_id, u_id);
			channelService.ChannelRegister(u_id, ch_id);
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Certified!!!');");
			script.println("location.href = 'index.jsp'");
			script.println("</script>");
			script.close();
			return;
		}
		else
		{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Not right Code!!');");
			script.println("location.href = 'index.jsp'");
			script.println("</script>");
			script.close();
			return;
		}
	}
}
