package beans;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;

public interface MenuDAO {

	public MenuDTO getMenu(MenuDTO menu) throws DataAccessException;
	public List<MenuDTO> searchMenuList(HashMap<String, Object> menu) throws DataAccessException;
	public List<MenuDTO> getAllMenu(Date m_time) throws DataAccessException;
	public int updateMenu(MenuDTO menu) throws DataAccessException;
	public ArrayList<String> splitM_content(String m_count)  throws DataAccessException;
}
