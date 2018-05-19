package beans;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface BookmarkDAO {
	public boolean isBookmarked(BookmarkDTO bdt) throws DataAccessException;
	public List<String> getBookmarkList(String p_id) throws DataAccessException;
	public int getBookmarkCount(String p_id) throws DataAccessException;
	public boolean deleteBookmark(BookmarkDTO bdt) throws DataAccessException;
	public boolean insertBookmark(BookmarkDTO bdt) throws DataAccessException;
}
