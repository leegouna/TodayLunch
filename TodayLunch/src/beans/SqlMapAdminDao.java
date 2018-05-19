package beans;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;

public class SqlMapAdminDao extends SqlSessionDaoSupport implements AdminDAO {

	@Override
	public int getPeopleCount(String type) throws DataAccessException {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("getPeopleCount",type);
	}

	@Override
	public List getPeople(AdminDTO dto) throws DataAccessException {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("getPeople", dto);
	}

	@Override
	public List getNotice() throws DataAccessException {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("getNotice");
	}

	@Override
	public void writeNotice(AdminDTO dto) throws DataAccessException {
		// TODO Auto-generated method stub
		getSqlSession().insert("writeNotice", dto);
	}

	@Override
	public void updateNotice(Map map) throws DataAccessException {
		// TODO Auto-generated method stub
		getSqlSession().update("updateNotice", map);
	}

	@Override
	public void deleteNotice(String no_num) throws DataAccessException {
		// TODO Auto-generated method stub
		getSqlSession().delete("deleteNotice",no_num);
	}

	@Override
	public int getSikInfo() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("getSikInfo");
	}

	@Override
	public List getSikInfoList(int start) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("getSikInfoList", start);
	}

}
