package playlist.playlistDTO;

public class ListDetailDTO {

	private int det_id;
	private int v_id;
	private String pl_id;
	
	public int getDet_id() {
		return det_id;
	}
	public void setDet_id(int det_id) {
		this.det_id = det_id;
	}
	public int getV_id() {
		return v_id;
	}
	public void setV_id(int v_id) {
		this.v_id = v_id;
	}
	public String getPl_id() {
		return pl_id;
	}
	public void setPl_id(String pl_id) {
		this.pl_id = pl_id;
	}
	
	public ListDetailDTO() {}
	public ListDetailDTO(int det_id, int v_id, String pl_id) {
		super();
		this.det_id = det_id;
		this.v_id = v_id;
		this.pl_id = pl_id;
	}
	
}
