package service;

import channel.channelDAO.ChannelDAO;
import channel.channelDTO.ChannelDTO;

public class ChannelService {

	private static ChannelService service = new ChannelService();
	public ChannelDAO dao = ChannelDAO.getInstance();
	private ChannelService() {}
	public static ChannelService getInstance() {
		return service;
	}
	
	public void ChannelRegister(String u_id, String ch_id) {
		dao.ChannelRegister(u_id, ch_id);
	}
	
	public ChannelDTO selectChannel(String u_id) {
		return dao.selectChannel(u_id);
	}
}
