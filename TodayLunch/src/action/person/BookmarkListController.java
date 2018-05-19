package action.person;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.BookmarkDAO;
import beans.MenuDTO;
import beans.RestCommand;
import beans.MenuDAO;
import beans.RestDAO;

@Controller
public class BookmarkListController {
	
	@Autowired
	BookmarkDAO bda;
	
	@Autowired
	MenuDAO mda;
	
	@Autowired
	RestDAO rda;
	
	@RequestMapping("/Bookmark/bookmarkList.lunch")
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String p_id=(String)request.getSession().getAttribute("s_id");
		//String p_id = "person1";// test
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Bookmark/bookmarkList");// 이동할 페이지 지정
		System.out.println("BookmarkListController p_id:" + p_id);
		List<String> bookmarkList = bda.getBookmarkList(p_id);	//해당 개인회원의 즐겨찾기 목록 구하기
		int list_size = bookmarkList.size();	//즐겨찾기 목록 크기 구하기
		if (list_size != 0) {	//즐겨찾기가 1개 이상 있다면
			System.out.println("BookmarkListController list_size:" + list_size);
			HashMap<String, ArrayList<String>> nm = new HashMap<String, ArrayList<String>>(list_size);
			ArrayList<String> r_img0List = new ArrayList<String>(list_size);//사이즈만큼의 어레이리스트 생성
			String r_name="";
			MenuDTO menu=null;
			ArrayList<String> m_array=null;
			for (int i = 0; i < list_size; i++) {
				System.out.println("BookmarkListController bookmarkList.get(i):" + bookmarkList.get(i));
				r_name = rda.getR_name(bookmarkList.get(i));	//즐겨찾기의 식당 이름 구하기
				
				//식당의 사진 구하기
				RestCommand rest_info=rda.getRest_Info(rda.getR_id(r_name));
				System.out.println("SearchResultController rest_info.getR_img0():" +rest_info.getR_img0());
				r_img0List.add(i, rest_info.getR_img0());
				
				MenuDTO m=new MenuDTO();
				m.setR_name(r_name);
				m.setM_time(new Date(System.currentTimeMillis()));	//현재 날짜 구하기
				menu = mda.getMenu(m);	//현재 날짜의 즐겨찾기한 식당의 메뉴 구하기
				
				m_array=mda.splitM_content(menu.getM_content());	//메뉴 문자열을 <br>로 잘라 어레이리스트로 만들기
				System.out.println("BookmarkListController "+r_name+"'s m_array.get(0)="+m_array.get(0));
				if(m_array.get(0).equals("")) {	//즐겨찾기한 식당이 메뉴를 입력하지 않았을 때
					m_array.clear();
					m_array.add("오늘의 메뉴를 입력하지 않았습니다.");
				}
				nm.put(r_name, m_array);	//식당이름을 키로, 메뉴 어레이리스트를 값으로 삽입
				System.out.println("BookmarkListController r_name, menu:" + r_name + ", " + menu);
			}
			Map<String, ArrayList<String>> name_menu = new TreeMap<String, ArrayList<String>>(nm);
			mav.addObject("name_menu", name_menu); //이동할 페이지에 식당 이름과 메뉴를 삽입
			mav.addObject("r_img0List", r_img0List);	//이동할 페이지에 식당 메인 이미지 어레이리스트 삽입

		}else {	//즐겨찾기한 식당이 없을 경우
			mav.addObject("name_menu", null);	//
		}

		return mav;
	}

}
