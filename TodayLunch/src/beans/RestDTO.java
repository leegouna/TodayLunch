package beans;

public class RestDTO {
    private String r_id;// 식당 아이디
    private String r_passwd;// 식당 비밀번호
    private String r_email;// 식당 이메일
    private String r_phone;// 식당 연락처

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

}
