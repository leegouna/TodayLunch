package action;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.MenuDTO;
import beans.RestCommand;
import beans.RestDAO;
import util.StringSecure;
import beans.MenuDAO;
import beans.MenuDTO;

@Controller
public class SearchResultController {

	@Autowired
	MenuDAO mda;
	
	@Autowired
	RestDAO rda;
	
	@RequestMapping("/Search/searchResult.lunch")
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String searchWord = StringSecure.convert(request.getParameter("searchWord"));	//검색어 받아오기
		List<MenuDTO> menuList = null;	
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("Search/searchResult");// 이동할 페이지 지정
		Date date = new Date(System.currentTimeMillis());	//오늘 날짜 받아오기
		System.out.println("SearchResultController date:" + date);
		if (!searchWord.equals("")) {	//검색어가 공백문자가 아니라면
			System.out.println("SearchResultController searchWord:" + searchWord);
			HashMap<String, Object> mc=new HashMap<String, Object>();
			mc.put("searchWord", searchWord);	//검색어 삽입
			mc.put("m_time", date);					//시간 삽입
			menuList = mda.searchMenuList(mc);	//검색어와 맞는 식당 이름이나 메뉴를 삽입
			
		}else {
			menuList = mda.getAllMenu(date);	//검색어가 공백문자라면 모든 식당을 삽입
		}
		System.out.println("SearchResultController menuList:" + menuList);
		int menuListSize=menuList.size();	//검색 결과 목록의 크기 값 구하기
		if (menuListSize!= 0) {	//검색 결과가 한 개 이상일 때
			System.out.println("SearchFormAction menuList.size():" + menuList.size());
			ArrayList<ArrayList<String>> m_arrayList = new ArrayList<ArrayList<String>>(menuListSize); //사이즈만큼의 어레이리스트 생성
			ArrayList<String> r_img0List = new ArrayList<String>(menuListSize);	//사이즈만큼의 어레이리스트 생성
			for (int i = 0; i < menuList.size(); i++) {
				m_arrayList.add(mda.splitM_content(menuList.get(i).getM_content()));	//메뉴를 <br>로 잘라 하나씩 에러이리스트에 삽입
				
				//식당의 사진 구하기
				RestCommand rest_info=rda.getRest_Info(rda.getR_id(menuList.get(i).getR_name()));
				System.out.println("SearchResultController rest_info.getR_img0():" +rest_info.getR_img0());
				r_img0List.add(i, rest_info.getR_img0());
				
			}
			mav.addObject("m_arrayList", m_arrayList);	//이동할 페이지에 메뉴 리스트 삽입
			mav.addObject("r_img0List", r_img0List);	//이동할 페이지에 식당 메인 이미지 어레이리스트 삽입
		}
		mav.addObject("menuListSize", menuListSize);	//이동할 페이지에 메뉴 리스트 크기 삽입
		mav.addObject("menuList", menuList);	//이동할 페이지에 검색 결과 리스트 삽입

		return mav;
	}
}
