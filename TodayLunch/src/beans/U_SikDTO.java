package beans;

import java.sql.Timestamp;

public class U_SikDTO {
	private String p_id;// 개인 아이디
	private String r_name;// 식당 이름
	private Timestamp u_time;// 메뉴 날짜

	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}

	public String getR_name() {
		return r_name;
	}

	public void setR_name(String r_name) {
		this.r_name = r_name;
	}

	public Timestamp getU_time() {
		return u_time;
	}

	public void setU_time(Timestamp u_time) {
		this.u_time = u_time;
	}

}
