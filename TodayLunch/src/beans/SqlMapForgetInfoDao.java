package beans;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;

public class SqlMapForgetInfoDao extends SqlSessionDaoSupport  implements ForgetInfoDAO  {
	
	public String Forget_id(String email) throws DataAccessException {
		// TODO Auto-generated method stub	
		return getSqlSession().selectOne("forget_id", email);
	}
	public String Forget_passwd(HashMap<String, Object> forget) throws DataAccessException {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("forget_passwd", forget);
	}
	@Override
	public String get_passwd(String id) throws DataAccessException {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("get_passwd", id);
	}
}
