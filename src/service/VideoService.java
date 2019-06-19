package service;

import java.util.ArrayList;

import user.userDTO.UserDTO;
import video.videoDAO.VideoDAO;
import video.videoDTO.VideoDTO;

public class VideoService {

	private static VideoService service = new VideoService();
	public VideoDAO dao = VideoDAO.getInstance();
	private VideoService() {}
	public static VideoService getInstance() {
		return service;
	}
	
	public boolean videoRegister(VideoDTO v) {
		return dao.videoRegister(v);
	}
	
	public boolean videoDelete(int v_id) {
		return dao.videoDelete(v_id);
	}
	
	public ArrayList<VideoDTO> videoSearchUID(String u_id) {
		return dao.videoSearchUID(u_id);
	}
	
	public VideoDTO videoSearchVID(int v_id) {
		return dao.videoSearchVID(v_id);
	}
	
	public ArrayList<VideoDTO> videoSearch() {
		return dao.videoSearch();
	}
	
	public ArrayList<VideoDTO> videoSearchAJAX(String v_title) {
		return dao.videoSearchAJAX(v_title);
	}
	
	public UserDTO videoUploaderSearch(int v_id) {
		return dao.videoUploaderSearch(v_id);
	}
}
