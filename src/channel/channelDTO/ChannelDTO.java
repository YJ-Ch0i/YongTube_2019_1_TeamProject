package channel.channelDTO;

public class ChannelDTO {

	private String u_id;
	private String ch_id;
	
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getCh_id() {
		return ch_id;
	}
	public void setCh_id(String ch_id) {
		this.ch_id = ch_id;
	}
	
	public ChannelDTO() {}
	public ChannelDTO(String u_id, String ch_id) {
		super();
		this.u_id = u_id;
		this.ch_id = ch_id;
	}
}
