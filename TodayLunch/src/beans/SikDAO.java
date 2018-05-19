package beans;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.springframework.dao.DataAccessException;

public interface SikDAO {
	//SikkwonDAO에 있던 메소드들
	/*public List<SikkwonCommand> u_sik(String p_id) throws DataAccessException;
	public int getSnum(String p_id) throws DataAccessException;
	public boolean updateSik(SikkwonCommand sik) throws DataAccessException;
	public TreeMap<Date, Integer> getPersonU_SikList(String p_id) throws DataAccessException;
	*///SikDAO에 있던 메소드들
	public String usesik(SikCommand sik) throws DataAccessException;
	public int sikUpdate(SikCommand sik) throws DataAccessException;
	//public int u_sikInsert(SikkwonCommand sik) throws DataAccessException;
	public TreeMap<Date, Integer> getRestU_SikList(Map<String, Object> u_sikMap) throws DataAccessException;
	public int getRestU_SikCount(String r_name) throws DataAccessException;
	public HashMap<String, Integer> pageList(String pageNum,int count);
	
}
