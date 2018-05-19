package beans;

import java.sql.Date;

public class MenuDTO {
    private String r_name;// 식당 이름
    private Date m_time;// 메뉴 날짜
    private String m_content;// 메뉴

    public String getR_name() {
        return r_name;
    }

    public void setR_name(String r_name) {
        this.r_name = r_name;
    }

    public Date getM_time() {
        return m_time;
    }

    public void setM_time(Date m_time) {
        this.m_time = m_time;
    }

    public String getM_content() {
        return m_content;
    }

    public void setM_content(String m_content) {
        this.m_content = m_content;
    }

}
