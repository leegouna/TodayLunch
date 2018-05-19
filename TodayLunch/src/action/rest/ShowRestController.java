package action.rest;

import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import beans.*;

@Controller
public class ShowRestController {

	@Autowired
	RestDAO dao;

	@Autowired
	BookmarkDAO bda;

	@Autowired
	ReviewDao re_dao;

	@RequestMapping("/Rest/showRest.lunch")
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Rest/showRest");// 이동할 페이지 지정

		String r_name = request.getParameter("r_name");//식당 이름 얻기
		String r_id = dao.getR_id(r_name);	//식당 아이디 얻기
		System.out.println("ShowRestController r_id는 ==>>>" + r_id);

		RestCommand rest_info = dao.getRest_Info(r_id);	//식당 정보 얻기
		System.out.println("ShowRestController rest_info:" + rest_info);

		
		// 즐겨찾기 확인+즐겨찾기 삭제+-----------------------	
		String grade=String.valueOf(request.getSession().getAttribute("grade"));
		if(grade!=null && grade.equals("3")) {	//개인 회원일 때
			BookmarkDTO bdt = new BookmarkDTO();
			 String p_id=(String)request.getSession().getAttribute("s_id");
			//String p_id = "person1";// test
			bdt.setP_id(p_id);
			bdt.setR_id(r_id);
			
			String bm_click = request.getParameter("bm_click");	//즐겨찾기 버튼 클릭 여부
			System.out.println("ShowRestController bm_click:" + bm_click);
			if (bm_click != null) {	//즐겨찾기 버튼 클릭함
				System.out.println("BookmarkListAction bm_click:" + bm_click);
				if(bm_click.equals("true")){	//이미 즐겨찾기 추가되어 있는 것이므로 삭제
					System.out.println("ShowRestController deleteBookmark:" +bda.deleteBookmark(bdt));
				}else if(bm_click.equals("false")) {	//즐겨찾기에 추가하기
					System.out.println("ShowRestController insertBookmark:"+bda.insertBookmark(bdt));
				}//if(bm_click.equals)
			}//if(bm_click!=null)
			String btn_class = "";	//즐겨찾기 버튼의 색
			String btn_text = "";	//즐겨찾기 버튼의 문자열
			if (bda.isBookmarked(bdt)) {	//해당 식당이 즐겨찾기 테이블에 추가되어 있다면
				btn_class = "btn btn-danger";
				btn_text = "즐겨찾기 삭제";
			} else {	//해당 식당이 즐겨찾기 테이블에 추가되어 있지 않다면
				btn_class = "btn btn-success";
				btn_text = "즐겨찾기 추가";
			}
			//페이지에 값 보내기
			mav.addObject("btn_class", btn_class);	
			mav.addObject("btn_text", btn_text);
		}//if(request.getSession().getAttribute("grade").equals("3"))
		
		
		//리뷰게시판 : 페이징 처리 및 글 출력		
				String pageNum = request.getParameter("pageNum");	//현재 페이지 구하기
				String p_id=(String) request.getSession().getAttribute("s_id");
				
				int count=re_dao.getArticleCount(r_name);//해당 식당 총 레코드 수
				
				if (count != 0) {
					// 추가2 페이징 가져오기
					HashMap<String, Integer> pgList = re_dao.pageList(pageNum, count);	//페이징 함수 사용
					Map<String,Object> map=new HashMap<String,Object>();
					map.put("r_name", r_name);
					map.put("pageRow", pgList.get("startRow")-1);
					map.put("pageSize", pgList.get("pageSize"));
					
					List<ReviewCommand> review=re_dao.getArticles(map);	//게시글 출력
					
					mav.addObject("review", review);
					mav.addObject("pgList", pgList);	//이동할 페이지에 페이징 정보 삽입
				} else {
					mav.addObject("review", null);
				}			
						
				   mav.addObject("rest_info", rest_info);
				   mav.addObject("r_name", r_name);
				   mav.addObject("p_id", p_id);
				   return mav;
			}
		}
