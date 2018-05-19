package beans;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;

public class SqlMapBookmarkDao extends SqlSessionDaoSupport 
                                            implements BookmarkDAO {

	//해당 식당이 해당 개인회원의 즐겨찾기에 추가되어 있는가(추가 되어 있다면 true 반환)
	@Override
	public boolean isBookmarked(BookmarkDTO bto) throws DataAccessException {
		return (boolean)getSqlSession().selectOne("isBookmarked", bto);
	}

	//해당 개인회원의 즐겨찾기 목록(식당 이름) 받아오기
	@Override
	public List<String> getBookmarkList(String p_id) throws DataAccessException {
		return getSqlSession().selectList("getBookmarkList", p_id);
	}

	//해당 개인회원의 즐겨찾기 목록 크기 받아오기
	@Override
	public int getBookmarkCount(String p_id) throws DataAccessException {
		return getSqlSession().selectOne("getBookmarkCount", p_id);
	}

	//해당 개인회원이 즐겨찾기한 식당 한 곳 삭제하기(삭제 성공시 true 반환)
	@Override
	public boolean deleteBookmark(BookmarkDTO bto) throws DataAccessException {
		int check= getSqlSession().delete("deleteBookmark", bto);
		return (check==0)? false:true;
	}
	
	//해당 개인회원의 즐겨찾기에 식당 한 곳 추가하기(추가 성공시 true 반환)
	@Override
	public boolean insertBookmark(BookmarkDTO bto) throws DataAccessException {
		int check= getSqlSession().insert("insertBookmark", bto);
		return (check==0)? false:true;
	}
    
}




