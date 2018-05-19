package beans;

public class RestCommand {
	private String r_id;// 식당 아이디
	private String r_passwd;// 식당 비밀번호
	private String r_email;// 식당 이메일
	private String r_phone;// 식당 연락처
	private double r_wi;// 식당 위도
	private double r_gy;// 식당 경도
	private String r_add;// 식당 주소
	private String r_name;// 식당 이름
	private String r_info;// 식당 소개문
	private String r_img0;// 식당 이미지(메인/검색/즐겨찾기)
	private String r_img1;// 식당 이미지(식당 목록)
	private String r_img2;// 식당 이미지(식당 소개)

	public String getR_id() {
		return r_id;
	}

	public String getR_passwd() {
		return r_passwd;
	}

	public String getR_email() {
		return r_email;
	}

	public String getR_phone() {
		return r_phone;
	}

	public double getR_wi() {
		return r_wi;
	}

	public double getR_gy() {
		return r_gy;
	}

	public String getR_add() {
		return r_add;
	}

	public String getR_name() {
		return r_name;
	}

	public String getR_info() {
		return r_info;
	}

	public void setR_id(String r_id) {
		this.r_id = r_id;
	}

	public void setR_passwd(String r_passwd) {
		this.r_passwd = r_passwd;
	}

	public void setR_email(String r_email) {
		this.r_email = r_email;
	}

	public void setR_phone(String r_phone) {
		this.r_phone = r_phone;
	}

	public void setR_wi(double r_wi) {
		this.r_wi = r_wi;
	}

	public void setR_gy(double r_gy) {
		this.r_gy = r_gy;
	}

	public void setR_add(String r_add) {
		this.r_add = r_add;
	}

	public void setR_name(String r_name) {
		this.r_name = r_name;
	}

	public void setR_info(String r_info) {
		this.r_info = r_info;
	}

	public String getR_img0() {
		return r_img0;
	}

	public String getR_img1() {
		return r_img1;
	}

	public String getR_img2() {
		return r_img2;
	}

	public void setR_img0(String r_img0) {
		this.r_img0 = r_img0;
	}

	public void setR_img1(String r_img1) {
		this.r_img1 = r_img1;
	}

	public void setR_img2(String r_img2) {
		this.r_img2 = r_img2;
	}

}
