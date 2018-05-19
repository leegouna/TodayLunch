package beans;

import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;

public class SqlMapMemberDao extends SqlSessionDaoSupport implements MemberDAO {
	// 로그인 p_id, p_passwd
	public boolean login(Map<String, Object> map) throws DataAccessException {
		// TODO Auto-generated method stub
		/*int yes = getSqlSession().selectOne("login", map);
		return (yes == 0) ? false : true;*/
		return getSqlSession().selectOne("login", map);
	}

	// 로그인 시 grade 값
	public int grade(String p_id) throws DataAccessException {
		// TODO Auto-generated method stub
		return (Integer) getSqlSession().selectOne("grade", p_id);
	}

	// 회원 정보 출력
	public MemberDTO getMember(String p_id) throws DataAccessException {
		// TODO Auto-generated method stub
		return (MemberDTO) getSqlSession().selectOne("p_info", p_id);
	}

	// 회원 정보 수정
	public boolean personUpdate(MemberDTO mem) throws DataAccessException {
		// TODO Auto-generated method stub
		int update = getSqlSession().update("p_update", mem);
		return (update == 0) ? false : true;
	}

	// 회원 탈퇴 p_id, p_passwd
	public int deletePerson(MemberDTO mem) throws DataAccessException {
		// TODO Auto-generated method stub
		int delresult = 0;
		int delresult2 = 0;
		int delresult3 = 0;
		int delresult4 = 0;
		int delresult5 = 0;
		boolean ok = getSqlSession().selectOne("searchpw", mem);
		System.out.println(ok);
		if (ok) {
			delresult = getSqlSession().delete("p_delete", mem);
			delresult2 = getSqlSession().delete("lo_delete", mem);
			delresult3=	getSqlSession().delete("sikdelete", mem);
			delresult4=	getSqlSession().delete("u_sikdelete", mem);
			delresult5=	getSqlSession().delete("bmdelete", mem);
		}
		return delresult+delresult2+delresult3+delresult4+delresult5;
	}
	
	//중복아이디체크하기 있으면 true, 없으면 false반환
		
		public boolean checkID(String id) throws DataAccessException {
			// TODO Auto-generated method stub
			 return getSqlSession().selectOne("checkID",id);
		}

		//개인회원가입 메서드(회원가입 성공유무 true or fasle반환)
		
		public boolean memberInsert(MemberCommand memdto) throws DataAccessException {
			// TODO Auto-generated method stub
			int check=0, check2=0, check3=0;
			check=getSqlSession().insert("Insert1",memdto);
			if(check==1) {
				check2=getSqlSession().insert("Insert2",memdto);
				if(check2==1) {
					check3=getSqlSession().insert("Insert3",memdto);
				}
			}
			return ((check+check2+check3)==3)?true:false;
		}

		//식당회원가입 메서드
		
		public boolean memberInsert2(MemberCommand memdto) throws DataAccessException {
			// TODO Auto-generated method stub
			int check=0, check2=0, check3=0;
			check=getSqlSession().insert("Insert4",memdto);
			if(check==1) {
				check2=getSqlSession().insert("Insert5",memdto);
				if(check2==1) {
					check3=getSqlSession().insert("Insert6",memdto);
				}
			}
			return ((check+check2+check3)==3)?true:false;
		}

		@Override
		public boolean checkRes(String r_name) throws DataAccessException {
			// TODO Auto-generated method stub
			return (boolean)getSqlSession().selectOne("checkRes",r_name);
		}
}
