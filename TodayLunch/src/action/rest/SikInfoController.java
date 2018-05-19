package action.rest;

import java.sql.Date;
import java.util.Collections;
import java.util.HashMap;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.RestDAO;
import beans.SikDAO;

@Controller
public class SikInfoController {
	
	@Autowired
	RestDAO rda;
	
	@Autowired
	SikDAO dao;

	@RequestMapping("/Mypage_r/sikInfo.lunch")
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//String s_id = "rest1";// test
		String s_id = (String)request.getSession().getAttribute("s_id");
		String r_name = rda.getR_name(s_id);	//식당 이름 구하기
		String pageNum = request.getParameter("pageNum");	//현재 페이지 구하기
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Mypage_r/sikInfo");// 이동할 페이지 지정		

		int count = dao.getRestU_SikCount(r_name);	//식당의 식권 매출 내역 목록 크기 구하기
		System.out.println("SikInfoAction 현재 검색 레코드수(count)=>" + count);
		if (count != 0) {
			// 추가2 페이징 가져오기
			HashMap<String, Integer> pgList = dao.pageList(pageNum, count);	//페이징 함수 사용
			HashMap<String, Object> mso=new HashMap<String, Object>(3); 	
			mso.put("r_name", r_name);
			mso.put("pageRow", pgList.get("startRow"));
			mso.put("pageSize", pgList.get("pageSize"));//해쉬맵에 해당 페이지를 구하는데 필요한 값 삽입
			TreeMap<Date, Integer> u_sikList_asc = dao.getRestU_SikList(mso);	//날짜 오름차순으로 식권 매출 내역 받아오기
			System.out.println("SikInfoAction u_sikList_asc.size()=>" + u_sikList_asc.size());
			TreeMap<Date, Integer> u_sikList = new TreeMap<Date, Integer>(Collections.reverseOrder());	
			u_sikList.putAll(u_sikList_asc);	//내림차순으로 바꾸기
			// System.out.println("SikInfoAction
			// u_sikList(key[0])"+u_sikList.keySet().iterator().next());
			mav.addObject("u_sikList", u_sikList);	//이동할 페이지에 식권 매출 내역 목록 삽입
			mav.addObject("pgList", pgList);	//이동할 페이지에 페이징 정보 삽입
		} else {
			mav.addObject("u_sikList", null);	//식권 매출 내역 없음
		}
		
		mav.addObject("r_name", r_name);	//이동할 페이지에 식당 이름 삽입

		return mav;
	}

}
