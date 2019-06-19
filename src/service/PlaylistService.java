package service;

import java.util.ArrayList;

import playlist.playlistDAO.PlaylistDAO;
import video.videoDTO.VideoDTO;

public class PlaylistService {

	private static PlaylistService service = new PlaylistService();
	public PlaylistDAO dao = PlaylistDAO.getInstance();
	private PlaylistService() {}
	public static PlaylistService getInstance() {
		return service;
	}
	
	public void playListRegist(String pl_id, String u_id) {
		dao.playListRegist(pl_id, u_id);
	}
	
	public void playListDetailRegist(int v_id, String pl_id) {
		dao.playListDetailRegist(v_id, pl_id);
	}
	
	public ArrayList<VideoDTO> playListSearch(String pl_id) {
		return dao.playListSearch(pl_id);
	}
}
