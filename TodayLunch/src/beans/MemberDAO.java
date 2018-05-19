package beans;

import java.util.Map;

import org.springframework.dao.DataAccessException;

import beans.MemberDTO;

//추상 메서드 선언
public interface MemberDAO {
	// Login
	public boolean login(Map<String, Object> map) throws DataAccessException;

	// grade
	public int grade(String p_id) throws DataAccessException;

	// 회원수정 정보 출력
	public MemberDTO getMember(String p_id) throws DataAccessException;

	// 회원수정 정보 출력
	public boolean personUpdate(MemberDTO mem) throws DataAccessException;

	// 회원 탈퇴
	public int deletePerson(MemberDTO mem) throws DataAccessException;

	// 1.중복아이디체크
	public boolean checkID(String id) throws DataAccessException;

	// 2.개인회원가입
	public boolean memberInsert(MemberCommand memdto) throws DataAccessException;

	// 3.식당회원가입
	public boolean memberInsert2(MemberCommand memdto) throws DataAccessException;
	
	//4.식당이름 중복체크
	public boolean checkRes(String r_name) throws DataAccessException;
}
