package beans;

public class SikkwonDTO {
	private String p_id;
	private String r_name;
	private String u_time;
	private int s_num;
	private int pageRow;
	private int pageSize;
	private int pageNum;
	private int count;
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPageRow() {
		return pageRow;
	}
	public void setPageRow(int pageRow) {
		this.pageRow = pageRow;
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
	public String getR_name() {
		return r_name;
	}
	public String getU_time() {
		return u_time;
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
	public void setU_time(String u_time) {
		this.u_time = u_time;
	}
	
	public int getS_num() {
		return s_num;
	}
	
	public void setS_num(int s_num) {
		this.s_num = s_num;
	}
}
