package user.userDTO;

import java.sql.Date;

public class UserDTO {

	private String u_id;
	private String u_pass;
	private String u_name;
	private String u_alias;
	private String pl_id;
	private String u_idhash;
	private boolean isCheck;
	private Date regidate;
	private boolean possibility;
	
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getU_pass() {
		return u_pass;
	}
	public void setU_pass(String u_pass) {
		this.u_pass = u_pass;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_alias() {
		return u_alias;
	}
	public void setU_alias(String u_alias) {
		this.u_alias = u_alias;
	}
	public String getPl_id() {
		return pl_id;
	}
	public void setPl_id(String pl_id) {
		this.pl_id = pl_id;
	}
	public String getU_idhash() {
		return u_idhash;
	}
	public void setU_idhash(String u_idhash) {
		this.u_idhash = u_idhash;
	}
	public boolean isCheck() {
		return isCheck;
	}
	public void setCheck(boolean isCheck) {
		this.isCheck = isCheck;
	}
	public Date getRegidate() {
		return regidate;
	}
	public void setRegidate(Date regidate) {
		this.regidate = regidate;
	}
	public boolean isPossibility() {
		return possibility;
	}
	public void setPossibility(boolean possibility) {
		this.possibility = possibility;
	}
	public UserDTO() {}
	public UserDTO(String u_id, String u_pass, String u_name, String u_alias, String pl_id, String u_idhash,
			boolean isCheck, Date regidate, boolean possibility) {
		super();
		this.u_id = u_id;
		this.u_pass = u_pass;
		this.u_name = u_name;
		this.u_alias = u_alias;
		this.pl_id = pl_id;
		this.u_idhash = u_idhash;
		this.isCheck = isCheck;
		this.regidate = regidate;
		this.possibility = possibility;
	}
	
	public UserDTO(String u_id, String u_pass, String u_name, String u_alias, String pl_id, boolean isCheck,
			Date regidate, boolean possibility) {
		super();
		this.u_id = u_id;
		this.u_pass = u_pass;
		this.u_name = u_name;
		this.u_alias = u_alias;
		this.pl_id = pl_id;
		this.isCheck = isCheck;
		this.regidate = regidate;
		this.possibility = possibility;
	}
	
	/**
	 * 업로더 찾는 쿼리용
	 * @param u_name
	 * @param u_alias
	 */
	public UserDTO(String u_name, String u_alias) {
		super();
		this.u_name = u_name;
		this.u_alias = u_alias;
	}
}

