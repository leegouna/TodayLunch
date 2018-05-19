package beans;

public class SikCommand {
	private String p_id; // 개인 아이디
	// sik table
	private String p_siknum; // 식권 인증번호
	private int s_num; // 소지 식권 개수
	// u_sik table
	private String r_name; // 식권을 사용한 식당 이름
	private String u_time; // 식권을 사용한 시간

	public String getP_id() {
		return p_id;
	}

	public String getP_siknum() {
		return p_siknum;
	}

	public int getS_num() {
		return s_num;
	}

	public String getR_name() {
		return r_name;
	}

	public String getU_time() {
		return u_time;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}

	public void setP_siknum(String p_siknum) {
		this.p_siknum = p_siknum;
	}

	public void setS_num(int s_num) {
		this.s_num = s_num;
	}

	public void setR_name(String r_name) {
		this.r_name = r_name;
	}

	public void setU_time(String u_time) {
		this.u_time = u_time;
	}

}
