package video.videoDTO;

import java.sql.Timestamp;

public class VideoDTO {

	private int v_id;
	private String u_id;
	private String v_title;
	private String v_desc;
	private String v_path;
	private String v_img;
	private String ch_id;
	private Timestamp updated;
	
	public int getV_id() {
		return v_id;
	}
	public void setV_id(int v_id) {
		this.v_id = v_id;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getV_title() {
		return v_title;
	}
	public void setV_title(String v_title) {
		this.v_title = v_title;
	}
	public String getV_desc() {
		return v_desc;
	}
	public void setV_desc(String v_desc) {
		this.v_desc = v_desc;
	}
	public String getV_path() {
		return v_path;
	}
	public void setV_path(String v_path) {
		this.v_path = v_path;
	}
	public String getV_img() {
		return v_img;
	}
	public void setV_img(String v_img) {
		this.v_img = v_img;
	}
	public String getCh_id() {
		return ch_id;
	}
	public void setCh_id(String ch_id) {
		this.ch_id = ch_id;
	}
	public Timestamp getUpdated() {
		return updated;
	}
	public void setUpdated(Timestamp updated) {
		this.updated = updated;
	}
	
	public VideoDTO() {}
	/**
	 * 
	 * @param v_id
	 * @param u_id
	 * @param v_title
	 * @param v_desc
	 * @param v_path
	 * @param ch_id
	 * @param updated
	 */
	public VideoDTO(int v_id, String u_id, String v_title, String v_desc, String v_path, String ch_id,
			Timestamp updated) {
		super();
		this.v_id = v_id;
		this.u_id = u_id;
		this.v_title = v_title;
		this.v_desc = v_desc;
		this.v_path = v_path;
		this.ch_id = ch_id;
		this.updated = updated;
	}
	
	/**
	 * 동영상 등록용
	 * @param u_id
	 * @param v_title
	 * @param v_desc
	 * @param v_path
	 * @param v_img
	 * @param ch_id
	 * @param updated
	 */
	public VideoDTO(String u_id, String v_title, String v_desc, String v_path, String v_img, String ch_id, Timestamp updated) {
		super();
		this.u_id = u_id;
		this.v_title = v_title;
		this.v_desc = v_desc;
		this.v_path = v_path;
		this.v_img = v_img;
		this.ch_id = ch_id;
		this.updated = updated;
	}
	
	/**
	 * 전체
	 * @param v_id
	 * @param u_id
	 * @param v_title
	 * @param v_desc
	 * @param v_path
	 * @param v_img
	 * @param ch_id
	 * @param updated
	 */
	public VideoDTO(int v_id, String u_id, String v_title, String v_desc, String v_path, String v_img, String ch_id,
			Timestamp updated) {
		super();
		this.v_id = v_id;
		this.u_id = u_id;
		this.v_title = v_title;
		this.v_desc = v_desc;
		this.v_path = v_path;
		this.v_img = v_img;
		this.ch_id = ch_id;
		this.updated = updated;
	}
	
	/**
	 * 플레이리스트 뷰에서 객체 생성용
	 * @param v_id
	 * @param v_title
	 * @param v_desc
	 * @param v_img
	 * @param updated
	 */
	public VideoDTO(int v_id, String v_img, String v_title, String v_desc, Timestamp updated) {
		super();
		this.v_id = v_id;
		this.v_title = v_title;
		this.v_desc = v_desc;
		this.v_img = v_img;
		this.updated = updated;
	}
}
