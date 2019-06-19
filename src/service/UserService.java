package service;

import java.util.ArrayList;

import user.userDAO.UserDAO;
import user.userDTO.UserDTO;

public class UserService {

	private static UserService service = new UserService();
	public UserDAO dao = UserDAO.getInstance();
	private UserService() {}
	public static UserService getInstance() {
		return service;
	}
	
	public boolean isUserRegist(String uId) {
		return dao.isUserRegist(uId);
	}
	
	public boolean isUserAliasRegist(String alias) {
		return dao.isUserAliasRegist(alias);
	}
	
	public int userLogin(String u_id, String u_pass) {
		return dao.userLogin(u_id, u_pass);
	}
	
	public int userRegister(UserDTO user) {
		return dao.userRegister(user);
	}
	
	public boolean getEamilChecked(String u_id) {
		return dao.getEamilChecked(u_id);
	}
	
	public boolean setEmailCheck(String u_id, String pl_id) {
		return dao.setEmailCheck(u_id, pl_id);
	}
	
	public UserDTO getUser(String u_id) {
		return dao.getUser(u_id);
	}
	
	public ArrayList<UserDTO> getAllUser() {
		return dao.getAllUser();
	}
	
	public boolean setTruePossibility(String u_id) {
		return dao.setTruePossibility(u_id);
	}
	
	public boolean setFalsePossibility(String u_id) {
		return dao.setFalsePossibility(u_id);
	}
}
