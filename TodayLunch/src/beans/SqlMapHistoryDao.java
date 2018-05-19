package beans;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;

public class SqlMapHistoryDao extends SqlSessionDaoSupport  implements HistoryDAO {
	
	public void infoInsert(HistoryDTO his) throws DataAccessException {
		// TODO Auto-generated method stub
		 getSqlSession().insert("infoInsert",his);
		 }
		
}
