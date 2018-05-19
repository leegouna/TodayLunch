package beans;

public class MemberDTO {
	private String p_id;
	private String p_passwd;
	private String p_email;
	private String p_name;
	private boolean p_check;
	private String p_siknum;
	
	public String getP_id() {
		return p_id;
	}
	public String getP_passwd() {
		return p_passwd;
	}
	public String getP_email() {
		return p_email;
	}
	public String getP_name() {
		return p_name;
	}
	public boolean getP_check() {
		return p_check;
	}
	public String getP_siknum() {
		return p_siknum;
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	public void setP_passwd(String p_passwd) {
		this.p_passwd = p_passwd;
	}
	public void setP_email(String p_email) {
		this.p_email = p_email;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public void setP_check(boolean p_check) {
		this.p_check = p_check;
	}
	public void setP_siknum(String p_siknum) {
		this.p_siknum = p_siknum;
	}
	
	
}
