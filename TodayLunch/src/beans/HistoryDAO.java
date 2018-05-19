package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.springframework.dao.DataAccessException;

public interface HistoryDAO{
	public  void   infoInsert(HistoryDTO his) throws DataAccessException;
}
