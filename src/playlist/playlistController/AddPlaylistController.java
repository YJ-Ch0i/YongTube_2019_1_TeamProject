package playlist.playlistController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import Controller.Controller;
import service.PlaylistService;

public class AddPlaylistController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pl_id = request.getParameter("v_pl");
		int v_id = Integer.parseInt(request.getParameter("v_id"));
		
		System.out.println(pl_id);
		System.out.println(v_id);
		
		PlaylistService plService = PlaylistService.getInstance();
		plService.playListDetailRegist(v_id, pl_id);
		JSONObject obj = new JSONObject();

		obj.put("result", "Playlist Regist Success!!");

		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().print(obj);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		this.execute(request, response);
	}
}
