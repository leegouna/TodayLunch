package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;

import org.springframework.dao.DataAccessException;

import mail.Email;


public interface ForgetInfoDAO {
	
	public String Forget_id(String email)  throws DataAccessException;
	
	public String Forget_passwd(HashMap<String, Object> forget)  throws DataAccessException;
	
	public String get_passwd(String id)throws DataAccessException;
}
	
	
/*public class ForgetInfoDAO {
	
	private DBConnectionMgr pool;

	public ForgetInfoDAO() {
		try {
			pool = DBConnectionMgr.getInstance();
			System.out.println("pool");			
		}catch(Exception e) {
			System.out.println("연결실패"+e);
		}
	}// 생성자
	
	
	public String Forget_id(String email) {
		
		String result="null";
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select p_id from person where p_email='"+email+"' union select r_id from rest where r_email='"+email+"'";
		System.out.println(sql);
		
		try {
			
			con=pool.getConnection();
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				result=rs.getString(1);
			}
			
		}catch(Exception e) {
			
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return result;
	}
	
	
	
		public String Forget_passwd(String id,String email) {
		
			
		String result="null 입니다";
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select p_email from person where p_id='"+id+"' and p_email='"+email+
				"' union select r_email from rest where r_id='"+id+"' and r_email='"+email+"'";
		System.out.println(sql);
		
		try {
			
			con=pool.getConnection();
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				result=rs.getString(1);
				new Email().EmailSubmit(email,id);
				result="이메일발송이 완료되었습니다.";
			}
			
			
		}catch(Exception e) {
			
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		
		
		
		
		return result;
		
	}
	
	
	

}*/
