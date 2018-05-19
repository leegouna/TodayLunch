package beans;

import java.sql.Date;

public class NoticeDTO {
	
	private int no_num;
	private Date no_time;
	private String no_content;
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
	public String getNo_content() {
		return no_content;
	}
	public void setNo_content(String no_content) {
		this.no_content = no_content;
	}

}
