package action.admin;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import beans.AdminDAO;
import beans.SikkwonDTO;

@Controller
public class GetSikinfoController {
	@Autowired
	AdminDAO dao;
	
	@RequestMapping("Admin/sikInfo.lunch")
	public ModelAndView requestPro(HttpServletRequest request,
			@RequestParam(value="pageNum",defaultValue="1") int currentPage) throws Throwable {
		// TODO Auto-generated method stub
		ModelAndView mav= new ModelAndView("Admin/sikInfo");
		
		
		SikkwonDTO sikt = new SikkwonDTO();
		
		List<SikkwonDTO> u_sik=dao.getSikInfoList((currentPage-1)*6); //u_sik에서 가져오는 정보
		
		//페이징 처리----------------------------------------------------------------------
		
			int count = 0;// 총레코드수
			

			List list = null;// 화면에 출력할 레코드데이터		

			count = dao.getSikInfo();// select count(*) from u_sik
			System.out.println("현재 검색 레코드수(count)=>" + count);

			// 추가2 페이징 가져오기
			PagingUtil page = new PagingUtil(currentPage,count,6,6,"sikInfo.lunch");

			
//			HashMap<String, Object> pgList = dao.pageList(pageNum, count);
//			pgList.put("p_id", p_id);
//			System.out.println("pageNum="+pageNum);
//			if (count > 0) {
//				System.out.println(pgList.get("startRow") + ":::" + pgList.get("endRow"));
//					list = sikdao.useList(pgList);// 5개씩 (endRow X) 
//					System.out.println("cccccccccccccccc"+pgList.get("pageSize"));
//			}else {
//				list = Collections.EMPTY_LIST;// 아무것도 없다는 표시
//			}
//			mav.addObject("pgList", pgList); // 페이징처리된것을 전달
//			mav.addObject("list", list);// ${articleList} // 검색리스트를 전달
		
		//----------------------------------------------------------------------
		
		mav.addObject("pgList", page.getPagingHtml());
		mav.addObject("list", u_sik); //LIST
		//mav.addObject("sik", sik);  //getSum
		
		return mav;
	}
	
	
	
	
	
	
	
	
//	
//	
//public HashMap<String, Integer> pageList(String pageNum,int count) {
//		
//		//페이징 처리 결과를 저장할 HashMap객체 생성
//		HashMap<String,Integer> pglist = new HashMap<String,Integer>();
//		//==== 페이징 처리 계산부분 복사===================================
//		
//		//1 현재페이지
//		System.out.println("pageNum=>"+pageNum);
//		if(pageNum==null)pageNum="1";
//		int currentPage = Integer.parseInt(pageNum); // 숫자 현재페이지
//		
//		//3 보여줄 단위 개수 (레코드 , 페이지 , 블록 ) 설정
//				int pageSize = 5;         // 한페이지당 보여주는 레코드갯수    
//			    int blockSize = 5;    //한 블록당 보여주는 페이지의 수
//		//2 전체 레코드 개수 확인
//		//int count = count;
//			    System.out.println("pageList count 개수 체크용  "+count);
//		// DB상의 레코드 시작 번호 limit 수치
//		int startRow = (currentPage-1)*pageSize;
//		int endRow = currentPage*pageSize;
//		
//		//4 전체 레코드 수를 참고하여 전체 페이지, 블록 설정
//	    // beginPerPage  계산  (페이지별게시물 번호 제일 높은것)
//		int beginPerPage = count-(currentPage-1)*pageSize;
//		
//		System.out.println(count+":count |||"+beginPerPage+":beginPerPage");
//		
//		int pageCount = count/pageSize+(count%pageSize==0?0:1); // 전체 페이지 개수2 둘다 똑같음  
//		//int totalBlock=(int)Math.ceil((double)totalPage/blockSize);		//전체 블록 개수
//		int blockCount = 0;
//		//시작페이지 , 끝페이지
//		int startPage = 0;
//		//10의 배수인지
//		if(currentPage%blockSize!=0){ // 1~9 , 11~19 , 21~22 
//			startPage = currentPage/blockSize*blockSize+1;
//		}else{ //10,20,30,40
//			startPage=((currentPage/blockSize)-1)*blockSize+1;
//		}
//		int endPage = startPage+blockSize-1;
//		if(endPage>pageCount)	endPage=pageCount;
//		
//		//-- ListAction(pageNun,count) => pageList를 넘기고,, -> ListAction -> list.jsp
//		
//		pglist.put("currentPage", currentPage);
//		
//		pglist.put("pageSize", pageSize);
//		pglist.put("blockSize", blockSize);
//		
//		pglist.put("startRow", startRow);
//		pglist.put("endRow", endRow);
//		
//		pglist.put("pageCount", pageCount);
//		pglist.put("blockCount", blockCount);
//		
//		pglist.put("startPage", startPage);
//		pglist.put("endPage", endPage);
//		
//		pglist.put("beginPerPage", beginPerPage);
//
//		//number=count-(currentPage-1)*pageSize;
//		//request.setAttribute(키명,저장할값)// 이용해서 값 공유
//	    // beginPerPage  계산  (페이지별게시물 번호 제일 높은것)
//		//=======================================================
//		return pglist;
//			 
//	}
}
