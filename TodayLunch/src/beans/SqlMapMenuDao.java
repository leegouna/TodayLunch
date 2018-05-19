package beans;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;

public class SqlMapMenuDao extends SqlSessionDaoSupport 
                                            implements MenuDAO {
	
	//해당 식당의 해당 날짜에 등록된 메뉴 가져오기
	//등록되지 않았을 경우 빈 메뉴를 반환한다
	@Override
	public MenuDTO getMenu(MenuDTO menu) throws DataAccessException {
		MenuDTO mc=getSqlSession().selectOne("getMenu", menu);
		if(mc==null) {
			mc=new MenuDTO();
			mc.setR_name(menu.getR_name());
			mc.setM_time(menu.getM_time());
			mc.setM_content("");
		}
		return mc;
	}

	//식당 이름이나 메뉴 중에 검색어와 일치하는 항목 가져오기
	@Override
	public List<MenuDTO> searchMenuList(HashMap<String, Object> menu) throws DataAccessException {
		return getSqlSession().selectList("searchMenuList", menu);
	}
	/*@Override
	public List<MenuDTO> searchMenuList(MenuDTO menu) throws DataAccessException {
		return getSqlSession().selectList("searchMenuList", menu);
	}
	*/
	

	//해당 날짜의 모든 메뉴 가져오기
	@Override
	public List<MenuDTO> getAllMenu(Date m_time) throws DataAccessException {
		return getSqlSession().selectList("getAllMenu", m_time);
	}

	//메뉴 수정하기
	//이미 존재하는 메뉴라면 update, 존재하지 않다면 insert를 사용
	@Override
	public int updateMenu(MenuDTO menu) throws DataAccessException {
		int result=0;
		if((boolean)getSqlSession().selectOne("isMenu", menu)) {
			result=getSqlSession().update("updateMenu", menu);
		}else {
			result=getSqlSession().insert("insertMenu", menu);
		}
		return result;
	}

	//메뉴 문자열을 <br>로 잘라 ArrayList<String>로 반환하기
	@Override
	public ArrayList<String> splitM_content(String m_count) {
		return new ArrayList<String>(Arrays.asList(m_count.split("<br>")));
	}
    
}




