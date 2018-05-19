package beans;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;

public class SqlMapSikDao extends SqlSessionDaoSupport implements SikDAO {
	// SikkwonDAO-------------------------
	/*
	 * @Override public List<SikkwonCommand> u_sik(String p_id) throws
	 * DataAccessException { //개인 회원의 식권 사용 내역 구하기 return
	 * getSqlSession().selectList("u_sik", p_id); }
	 * 
	 * @Override public int getSnum(String p_id) throws DataAccessException { //소지
	 * 식권 개수 구하기 SikkwonCommand skc=getSqlSession().selectOne("getSnum", p_id);
	 * return skc.getS_num(); }
	 * 
	 * @Override public boolean updateSik(SikkwonCommand sik) throws
	 * DataAccessException { //식권 충전 boolean s_check=false; int
	 * update=getSqlSession().update("updateSik", sik);
	 * sik.setR_name("admin"); sik.setS_num(sikkwon.getS_num()*(-1)); int
	 * insert=getSqlSession().insert("u_sikInsert", sik); if(update+insert>=2) {
	 * s_check=true; } return s_check; }
	 * 
	 * @Override public TreeMap<Date, Integer> getPersonU_SikList(String p_id)
	 * throws DataAccessException { TreeMap<Date, Integer> u_sikList=null;
	 * List<TreeMap<Date, Integer>>
	 * o=getSqlSession().selectList("getPersonU_SikList", p_id); int size=o.size();
	 * if(size>0) { u_sikList=new TreeMap<Date, Integer>(); for(int i=0;i<size;i++)
	 * { Date key=(Date) o.get(i).keySet().toArray()[i]; u_sikList.put(key,
	 * o.get(i).get(key)); } } return u_sikList; }
	 */
	// SikDAO---------------------------------------
	
	//식권 사용 시 아이디/인증번호, 식권 개수 검사하고 그에 맞는 대화문 반환
	@Override
	public String usesik(SikCommand sik) throws DataAccessException {
		String check = "";
		SikCommand skc = getSqlSession().selectOne("usesik", sik);
		if (skc != null) {
			if (skc.getS_num() != 0) {
				sikUpdate(sik);
				check = "남은 식권은 " + (skc.getS_num() - 1) + "장 입니다";
			} else {
				check = "식권이 부족합니다";
			}
		} else {
			check = "아이디와 인증번호를<br>확인해주세요";
		}
		return check;
	}

	//해당 개인회원의 식권 개수에서 하나를 빼고 식권 사용 정보 추가하기
	@Override
	public int sikUpdate(SikCommand sik) throws DataAccessException {
		int update = getSqlSession().update("sikUpdate", sik);
		int insert = getSqlSession().insert("u_sikInsert", sik);
		return update + insert;
	}

	//식당회원의 식권 매출 내역 반환하기
	//날짜(key)별 해당 식당에서 사용된 식권 개수(value)를 TreeMap(정렬)로 만들었다. 
	@Override
	public TreeMap<Date, Integer> getRestU_SikList(Map<String, Object> u_sikMap) throws DataAccessException {
		TreeMap<Date, Integer> u_sikList = null;
		List<TreeMap<Object, Object>> o = getSqlSession().selectList("getRestU_SikList", u_sikMap);
		int size = o.size();
		if (size > 0) {	//만약 매출 내역이 있다면
			u_sikList = new TreeMap<Date, Integer>();
			for (int i = 0; i < size; i++) {
					String odate = (String) o.get(i).get("date");	//키값 받아오기
					Date key = Date.valueOf(odate);	//키 문자열을 Date 타입으로 변환
					
					java.math.BigDecimal tempValue = (java.math.BigDecimal)o.get(i).get("sum(s_num)");	
					int val = Integer.valueOf(tempValue.toString());	//MySQL의 BigDecimal을 int로 변환
					//System.out.println("getRestU_SikList key, val:"+key+", "+val);
					u_sikList.put(key, val);	//TreeMap에 삽입
			}
		}
		return u_sikList;
	}

	//해당 식당의 식권 매출 내역 목록 크기 구하기
	@Override
	public int getRestU_SikCount(String r_name) throws DataAccessException {
		return getSqlSession().selectOne("getRestU_SikCount", r_name);
	}

	// 페이징 처리 결과를 저장할 HashMap객체를 생성하기
	@Override
	public HashMap<String, Integer> pageList(String pageNum, int count) {
		HashMap<String, Integer> pglist = new HashMap<String, Integer>();
		// ==== 페이징 처리 계산부분 복사===================================

		// 1 현재페이지
		System.out.println("pageNum=>" + pageNum);
		if (pageNum == null)
			pageNum = "1";
		int currentPage = Integer.parseInt(pageNum); // 숫자 현재페이지

		// 3 보여줄 단위 개수 (레코드 , 페이지 , 블록 ) 설정
		int pageSize = 8; // 한페이지당 보여주는 레코드갯수
		int blockSize = 5; // 한 블록당 보여주는 페이지의 수
		// 2 전체 레코드 개수 확인
		// int count = count;
		System.out.println("pageList count 개수 체크용  " + count);
		// DB상의 레코드 시작 번호 limit 수치
		int startRow = (currentPage - 1) * pageSize;
		int endRow = currentPage * pageSize;

		// 4 전체 레코드 수를 참고하여 전체 페이지, 블록 설정
		// beginPerPage 계산 (페이지별게시물 번호 제일 높은것)
		int beginPerPage = count - (currentPage - 1) * pageSize;

		System.out.println(count + ":count |||" + beginPerPage + ":beginPerPage");

		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1); // 전체 페이지 개수2 둘다 똑같음
		// int totalBlock=(int)Math.ceil((double)totalPage/blockSize); //전체 블록 개수
		int blockCount = 0;
		// 시작페이지 , 끝페이지
		int startPage = 0;
		// 10의 배수인지
		if (currentPage % blockSize != 0) { // 1~9 , 11~19 , 21~22
			startPage = currentPage / blockSize * blockSize + 1;
		} else { // 10,20,30,40
			startPage = ((currentPage / blockSize) - 1) * blockSize + 1;
		}
		int endPage = startPage + blockSize - 1;
		if (endPage > pageCount)
			endPage = pageCount;

		// -- ListAction(pageNun,count) => pageList를 넘기고,, -> ListAction -> list.jsp

		pglist.put("currentPage", currentPage);

		pglist.put("pageSize", pageSize);
		pglist.put("blockSize", blockSize);

		pglist.put("startRow", startRow);
		pglist.put("endRow", endRow);

		pglist.put("pageCount", pageCount);
		pglist.put("blockCount", blockCount);

		pglist.put("startPage", startPage);
		pglist.put("endPage", endPage);

		pglist.put("beginPerPage", beginPerPage);

		return pglist;
	}

}
