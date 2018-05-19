package beans;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;

public class SqlMapRestDao extends SqlSessionDaoSupport implements RestDAO {

	// 식당 이름으로 식당 아이디 얻기
	@Override
	public String getR_id(String delete_r) throws DataAccessException {
		return getSqlSession().selectOne("getR_id", delete_r);
	}

	// 식당 아이디로 식당 이름 얻기
	@Override
	public String getR_name(String r_id) throws DataAccessException {
		return getSqlSession().selectOne("getR_name", r_id);
	}

	// 식당 아이디로 rest 정보 얻기
	@Override
	public RestCommand getRest(String r_id) throws DataAccessException {
		return getSqlSession().selectOne("getRest", r_id);
	}

	// 식당 아이디로 rest_info 정보 얻기
	@Override
	public RestCommand getRest_Info(String r_id) throws DataAccessException {
		return changeImgPath(getSqlSession().selectOne("getRest_Info", r_id));
	}

	// 식당 정보로 rest, rest_info 수정하기
	@Override
	public int updateRest(RestCommand rest) throws DataAccessException {

		int update = 0;
		// 식당 이름이 바뀌었다면 menu, review, u_sik 테이블도 수정하기
		if (!getRest_Info(rest.getR_id()).getR_name().equals(rest.getR_name())) {
			HashMap<String, String> r_name = new HashMap<String, String>(2);
			r_name.put("r_name_origin", getRest_Info(rest.getR_id()).getR_name());
			r_name.put("r_name_change", rest.getR_name());
			update += getSqlSession().update("updateRest_menu", r_name);
			update += getSqlSession().update("updateRest_review", r_name);
			update += getSqlSession().update("updateRest_u_sik", r_name);
		}
		update += getSqlSession().update("updateRest", rest);
		int update_info = getSqlSession().update("updateRest_info", rest);
		int update_login = getSqlSession().update("updateRest_login", rest);

		return update + update_info + update_login;
	}

	// 모든 식당 개수 구하기
	@Override
	public int getAllRestCount() throws DataAccessException {
		return (int) getSqlSession().selectOne("getAllRestCount");
	}

	// 모든 식당 이름/소개문 얻기
	@Override
	public List<RestCommand> getAllRest(HashMap<String, Integer> listScroll) throws DataAccessException {
		List<RestCommand> allrest = getSqlSession().selectList("getAllRest", listScroll);
		int size = allrest.size();
		System.out.println("allrest size:" + size);
		for (int i = 0; i < size; i++) {
			allrest.set(i, changeImgPath(allrest.get(i)));
		}
		return allrest;
	}

	// 식당회원 rest, rest_info, login에서 삭제하기
	// 만약 rest에서 삭제 실패한 경우 다른 테이블에서도 삭제하지 않는다.
	@Override
	public int deleteRest(RestCommand rest) throws DataAccessException {
		int delete = getSqlSession().delete("deleteRest", rest);
		if (delete > 0) {

			// 이미지가 있던 디렉토리 지우기
			String path = "C:/webtest/4.jsp/sou/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps"
					+ "/TodayLunch/img/restaurant/" + rest.getR_id();
			File file = new File(path);
			File[] files = file.listFiles();

			for (int i = 0; i < files.length; i++) {
				if (files[i].delete()) {
					System.out.println("deleteRest " + files[i].getName() + " 삭제성공");
				} else {
					System.out.println("deleteRest " + files[i].getName() + " 삭제실패");
				}
			}

			if (file.delete()) {
				System.out.println("deleteRest 디렉토리 삭제 성공");
			} else {
				System.out.println("deleteRest 디렉토리 삭제 실패");
			}

			int delete_info = getSqlSession().delete("deleteRest_info", rest);
			int delete_login = getSqlSession().delete("deleteRest_login", rest);
			delete += getSqlSession().delete("deleteRest_bookmark", rest);
			delete += getSqlSession().delete("deleteRest_menu", rest);
			delete += getSqlSession().delete("deleteRest_review", rest);
			return delete + delete_info + delete_login;
		}
		return delete;

	}

	// 이미지 주소 가져오기
	@Override
	public String getRestImg(HashMap<String, String> getImg) throws DataAccessException {
		return getSqlSession().selectOne("getRestImg", getImg);
	}

	// 저장된 이미지 모두 지우기
	@Override
	public void deleteRestImg(HashMap<String, String> delImg) throws DataAccessException {
		String path = getRestImg(delImg);
		System.out.println("deleteRestImg path:" + path);
		if (path != null) {
			File file = new File(path);

			if (file.exists()) {
				System.out.println("deleteRestImg file.exists()");
				file.delete();
			}
		}
	}

	@Override
	public String substringImgPath(String r_img) {
		System.out.println("substringImgPath r_img:" + r_img);
		String root_path = "C:/webtest/4.jsp/sou/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps";
		System.out.println("substringImgPath:" + r_img.substring(root_path.length()));
		return r_img.substring(root_path.length());
	}

	@Override
	public RestCommand changeImgPath(RestCommand rest) {
		if (rest.getR_img0() != null && !rest.getR_img0().equals("")) {
			rest.setR_img0(substringImgPath(rest.getR_img0()));
		} else {
			rest.setR_img0("/TodayLunch/img/menu/main menu1.jpg");
		}

		if (rest.getR_img1() != null && !rest.getR_img1().equals("")) {
			rest.setR_img1(substringImgPath(rest.getR_img1()));
		} else {
			rest.setR_img1("/TodayLunch/img/shopping/shop2.jpg");
		}

		if (rest.getR_img2() != null && !rest.getR_img2().equals("")) {
			rest.setR_img2(substringImgPath(rest.getR_img2()));
		} else {
			rest.setR_img2("/TodayLunch/img/blog/blog2.jpg");
		}
		return rest;
	}
}
