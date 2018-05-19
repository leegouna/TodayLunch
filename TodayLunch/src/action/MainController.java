package action;

import java.sql.Date;
import java.util.List;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.MenuDTO;
import beans.RestCommand;
import beans.RestDAO;
import beans.MenuDAO;

@Controller
public class MainController {

	@Autowired
	MenuDAO mda;
	
	@Autowired
	RestDAO rda;

	@RequestMapping("/main.lunch")
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Date date = new Date(System.currentTimeMillis());	//오늘 날짜 구하기

		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");// 이동할 페이지 지정
		List<MenuDTO> allMenu = mda.getAllMenu(date);	//해당 날짜의 모든 메뉴 구하기
		System.out.println("MainActionController allMenu's size:" + allMenu.size());
		int allMenuSize=allMenu.size();
		if (allMenuSize != 0) {	//오늘 날짜로 등록된 메뉴가 있다면
			ArrayList<ArrayList<String>> m_arrayList = new ArrayList<ArrayList<String>>(allMenuSize);	//메뉴 개수만큼의 어레이리스트 생성
			ArrayList<String> r_img0List = new ArrayList<String>(allMenuSize);	//메뉴 개수만큼의 어레이리스트 생성
			for (int i = 0; i < allMenu.size(); i++) {
				m_arrayList.add(mda.splitM_content(allMenu.get(i).getM_content()));	//메뉴 문자열을 <br>로 잘라 어레이리스트로 만들기
				
				//식당의 사진 구하기
				System.out.println("MainActionController allMenu.get(i).getR_name():" +allMenu.get(i).getR_name());
				RestCommand rest_info=rda.getRest_Info(
						rda.getR_id(
								allMenu.get(i).getR_name()));
				System.out.println("MainActionController rest_info.getR_img0():" +rest_info.getR_img0());
				r_img0List.add(i, rest_info.getR_img0());
				
			}
			mav.addObject("m_arrayList", m_arrayList);	//이동할 페이지에 자른 메뉴 어레이리스트 삽입
			mav.addObject("r_img0List", r_img0List);	//이동할 페이지에 식당 메인 이미지 어레이리스트 삽입
			
			
			
		}
		mav.addObject("date", date);	//이동할 페이지에 날짜 삽입
		mav.addObject("allMenu", allMenu);	//이동할 페이지에 해당 날짜의 모든 메뉴 목록 삽입
		mav.addObject("allMenuSize", allMenu.size()); //이동할 페이지에 해당 날짜의 모든 메뉴 목록 크기 삽입
		return mav;
	}

}
