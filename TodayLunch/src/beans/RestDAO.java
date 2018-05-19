package beans;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;

public interface RestDAO {

	public String getR_id(String delete_r) throws DataAccessException;
	public String getR_name(String r_id) throws DataAccessException;
	public RestCommand getRest(String r_id) throws DataAccessException;
	public RestCommand getRest_Info(String r_id) throws DataAccessException;
	public int updateRest(RestCommand rest) throws DataAccessException;
	//public int updateRest_info(RestCommand rest) throws DataAccessException;
	public int getAllRestCount() throws DataAccessException;
	public List<RestCommand> getAllRest(HashMap<String, Integer> listScroll) throws DataAccessException;
	//public List<RestCommand> getAllRest() throws DataAccessException;
	public int deleteRest(RestCommand rest) throws DataAccessException;
	
	public void deleteRestImg(HashMap<String, String> delImg) throws DataAccessException;
	public String getRestImg(HashMap<String, String> getImg) throws DataAccessException;
	public String substringImgPath(String r_img);
	public RestCommand changeImgPath(RestCommand rest);
}
