package comment.commentDTO;

public class CommentaryDTO {

	private int com_id;
	private int v_id;
	private String u_alias;
	private String content;
	
	public int getCom_id() {
		return com_id;
	}
	public void setCom_id(int com_id) {
		this.com_id = com_id;
	}
	public int getV_id() {
		return v_id;
	}
	public void setV_id(int v_id) {
		this.v_id = v_id;
	}
	public String getU_alias() {
		return u_alias;
	}
	public void setU_alias(String u_alias) {
		this.u_alias = u_alias;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public CommentaryDTO() {}
	public CommentaryDTO(int com_id, int v_id, String u_alias, String content) {
		super();
		this.com_id = com_id;
		this.v_id = v_id;
		this.u_alias = u_alias;
		this.content = content;
	}
}
