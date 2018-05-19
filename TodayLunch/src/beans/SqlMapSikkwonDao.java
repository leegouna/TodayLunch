package beans;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;

public class SqlMapSikkwonDao extends SqlSessionDaoSupport  implements SikkwonDAO{ 
	//내역 가져오기
	public List<SikkwonDTO> usik(String p_id) throws DataAccessException {
	// TODO Auto-generated method stub
	return getSqlSession().selectList("usik", p_id);
	}
	//충전개수
	public int addSnum(SikkwonDTO siko) throws DataAccessException {
	// TODO Auto-generated method stub
	return getSqlSession().insert("addSnum", siko);
	}
	
	//식권개수 
	public int getSnum(String p_id) throws DataAccessException {
	// TODO Auto-generated method stub
	return getSqlSession().selectOne("getSnum", p_id);
	}
	
	//sik테이블에 식권충전
	public boolean updateSik(SikkwonDTO siko) throws DataAccessException {
	// TODO Auto-generated method stub
		int update = getSqlSession().update("updateSik",siko);
		return (update == 0) ? false : true;
	}
	
	//총 레코드 개수
	public int getArticleCount(String p_id) throws DataAccessException {
	// TODO Auto-generated method stub
	return getSqlSession().selectOne("getArticleCount",p_id);
	}
	
	//가져오기
	public List<SikkwonDTO> useList(Map<String,Object> smap) throws DataAccessException {
	// TODO Auto-generated method stub
	return getSqlSession().selectList("useList", smap);
	}
	
	//페이징 처리
	public HashMap pageList(String pageNum, int count) throws DataAccessException {
	// TODO Auto-generated method stub
		//페이징 처리 결과를 저장할 HashMap객체 생성
		HashMap<String,Object> pglist = new HashMap<String,Object>();
		//==== 페이징 처리 계산부분 복사===================================	
		//1 현재페이지
		System.out.println("pageNum=>"+pageNum);
		if(pageNum==null)pageNum="1";
		int currentPage = Integer.parseInt(pageNum); // 숫자 현재페이지
		
		//3 보여줄 단위 개수 (레코드 , 페이지 , 블록 ) 설정
				int pageSize = 6;         // 한페이지당 보여주는 레코드갯수    
			    int blockSize = 5;    //한 블록당 보여주는 페이지의 수
		//2 전체 레코드 개수 확인
		//int count = count;
			    System.out.println("pageList count 개수 체크용  "+count);
		// DB상의 레코드 시작 번호 limit 수치
		int startRow = (currentPage-1)*pageSize;
		int endRow = currentPage*pageSize;
		
		//4 전체 레코드 수를 참고하여 전체 페이지, 블록 설정
	    // beginPerPage  계산  (페이지별게시물 번호 제일 높은것)
		int beginPerPage = count-(currentPage-1)*pageSize;
		
		System.out.println(count+":count |||"+beginPerPage+":beginPerPage");
		
		int pageCount = count/pageSize+(count%pageSize==0?0:1); // 전체 페이지 개수2 둘다 똑같음  
		//int totalBlock=(int)Math.ceil((double)totalPage/blockSize);		//전체 블록 개수
		int blockCount = 0;
		//시작페이지 , 끝페이지
		int startPage = 0;
		//10의 배수인지
		if(currentPage%blockSize!=0){ // 1~9 , 11~19 , 21~22 
			startPage = currentPage/blockSize*blockSize+1;
		}else{ //10,20,30,40
			startPage=((currentPage/blockSize)-1)*blockSize+1;
		}
		int endPage = startPage+blockSize-1;
		if(endPage>pageCount)	endPage=pageCount;
		
		//-- ListAction(pageNun,count) => pageList를 넘기고,, -> ListAction -> list.jsp
		
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

		//number=count-(currentPage-1)*pageSize;
		//request.setAttribute(키명,저장할값)// 이용해서 값 공유
	    // beginPerPage  계산  (페이지별게시물 번호 제일 높은것)
		//=======================================================
		return pglist;	
	}
}
