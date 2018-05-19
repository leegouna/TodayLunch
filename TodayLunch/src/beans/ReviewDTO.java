package beans;

import java.sql.Timestamp;

public class ReviewDTO {
	private int re_num;
	private String r_name;
	private String p_id;
	private Timestamp re_time;
	private String re_content;
	private int re_star;
	
	public int getRe_num() {
		return re_num;
	}
	public void setRe_num(int re_num) {
		this.re_num = re_num;
	}
	public String getR_name() {
		return r_name;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
	public String getP_id() {
		return p_id;
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	public Timestamp getRe_time() {
		return re_time;
	}
	public void setRe_time(Timestamp re_time) {
		this.re_time = re_time;
	}
	public String getRe_content() {
		return re_content;
	}
	public void setRe_content(String re_content) {
		this.re_content = re_content;
	}
	public int getRe_star() {
		return re_star;
	}
	public void setRe_star(int re_star) {
		this.re_star = re_star;
	}
}
