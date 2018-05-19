package beans;

import java.sql.Timestamp;

public class HistoryDTO {
	private String id;
	private String ip;
	private Timestamp con_time;
	private boolean con_result;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public Timestamp getCon_time() {
		return con_time;
	}
	public void setCon_time(Timestamp con_time) {
		this.con_time = con_time;
	}
	public boolean getCon_result() {
		return con_result;
	}
	public void setCon_result(boolean con_result) {
		this.con_result = con_result;
	}
}
