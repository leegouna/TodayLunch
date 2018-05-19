package beans;

import java.sql.Date;

public class AdminDTO {
	private String type;
	private int pageSize,pageRow;
//	공지용
	private int no_num;
	private Date no_time;
	private String no_content;
	

	//==========여기서부터 일반회원 저장 변수
	private String p_id;
	private String p_passwd;
	private String p_email;
	private String p_name;
	private boolean p_check;
	private String p_siknum;
	
//	=========== 여기서부터 식당회원 저장변수
	private String r_id;// 식당 아이디
    private String r_passwd;// 식당 비밀번호
    private String r_email;// 식당 이메일
    private String r_phone;// 식당 연락처
	
	
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getNo_content() {
		return no_content;
	}
	public void setNo_content(String no_content) {
		this.no_content = no_content;
	}
	
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	public String getP_id() {
		return p_id;
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	public String getP_passwd() {
		return p_passwd;
	}
	public void setP_passwd(String p_passwd) {
		this.p_passwd = p_passwd;
	}
	public String getP_email() {
		return p_email;
	}
	public void setP_email(String p_email) {
		this.p_email = p_email;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public boolean isP_check() {
		return p_check;
	}
	public void setP_check(boolean p_check) {
		this.p_check = p_check;
	}
	public String getP_siknum() {
		return p_siknum;
	}
	public void setP_siknum(String p_siknum) {
		this.p_siknum = p_siknum;
	}
	public String getR_id() {
		return r_id;
	}
	public void setR_id(String r_id) {
		this.r_id = r_id;
	}
	public String getR_passwd() {
		return r_passwd;
	}
	public void setR_passwd(String r_passwd) {
		this.r_passwd = r_passwd;
	}
	public String getR_email() {
		return r_email;
	}
	public void setR_email(String r_email) {
		this.r_email = r_email;
	}
	public String getR_phone() {
		return r_phone;
	}
	public void setR_phone(String r_phone) {
		this.r_phone = r_phone;
	}
	public int getNo_num() {
		return no_num;
	}
	public void setNo_num(int no_num) {
		this.no_num = no_num;
	}
	public Date getNo_time() {
		return no_time;
	}
	public void setNo_time(Date no_time) {
		this.no_time = no_time;
	}
	public int getPageRow() {
		return pageRow;
	}
	public void setPageRow(int pageRow) {
		this.pageRow = pageRow;
	}
}
