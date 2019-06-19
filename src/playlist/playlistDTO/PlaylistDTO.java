package playlist.playlistDTO;

public class PlaylistDTO {

	private String pl_id;
	private String u_id;
	
	public String getPl_id() {
		return pl_id;
	}
	public void setPl_id(String pl_id) {
		this.pl_id = pl_id;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
	public PlaylistDTO() {}
	public PlaylistDTO(String pl_id, String u_id) {
		super();
		this.pl_id = pl_id;
		this.u_id = u_id;
	}
}
