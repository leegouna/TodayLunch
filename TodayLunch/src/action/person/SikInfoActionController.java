package action.person;

import java.sql.Date;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.SikkwonDAO;
import beans.SikkwonDTO;

@Controller
public class SikInfoActionController {

	@Autowired
	SikkwonDAO sikdao;
	
	@RequestMapping("/Mypage_p/sikInfo.lunch")
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mav= new ModelAndView();
		mav.setViewName("/Mypage_p/sikInfo"); //이동할 페이지 지정	
		
		String p_id=(String) request.getSession().getAttribute("s_id");
		String r_name=request.getParameter("r_name");
		System.out.println("SikInfoAction p_id="+p_id);
		
		SikkwonDTO sikt = new SikkwonDTO();
		
		List<SikkwonDTO> u_sik=sikdao.usik(p_id); //u_sik에서 가져오는 정보
		System.out.println("SikInfoActionController u_sik:"+u_sik+", "+u_sik.size());
		if(u_sik.size()==0)
			u_sik=null;
		int sik=sikdao.getSnum(p_id); //sik 에서 가져오는 s_num
			System.out.println("sik에서 오는 식권 개수"+sik);
		//페이징 처리----------------------------------------------------------------------
		if (p_id != null) {
			String pageNum = request.getParameter("pageNum");
			System.out.println("pageNum이다"+pageNum);
			int count = 0;// 총레코드수
			// 게시판을 맨 처음 실행시키면 무조건 1페이지 부터 출력
			if (pageNum == null) {
				pageNum = "1";// default
			}

			List list = null;// 화면에 출력할 레코드데이터		

			count = sikdao.getArticleCount(p_id);// select count(*) from u_sik
			System.out.println("현재 검색 레코드수(count)=>" + count);

			// 추가2 페이징 가져오기
			HashMap<String, Object> pgList = sikdao.pageList(pageNum, count);
			pgList.put("p_id", p_id);
			System.out.println("pageNum="+pageNum);
			if (count > 0) {
				System.out.println(pgList.get("startRow") + ":::" + pgList.get("endRow"));
					list = sikdao.useList(pgList);// 5개씩 (endRow X) 
					System.out.println("cccccccccccccccc"+pgList.get("pageSize"));
			}else {
				list = Collections.EMPTY_LIST;// 아무것도 없다는 표시
			}
			mav.addObject("pgList", pgList); // 페이징처리된것을 전달
			mav.addObject("list", list);// ${articleList} // 검색리스트를 전달
		}
		//----------------------------------------------------------------------
		
		mav.addObject("p_id", p_id);
		mav.addObject("u_sik", u_sik); //LIST
		mav.addObject("sik", sik);  //getSum
		
		return mav;
	}

}
