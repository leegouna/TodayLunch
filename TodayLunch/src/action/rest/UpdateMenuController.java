package action.rest;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.MenuDTO;
import beans.MenuDAO;
import beans.MenuDTO;
import beans.RestCommand;
import beans.RestDAO;

@Controller
public class UpdateMenuController {

	//날짜 계산하기. date에 num*1일을 더한다.
	private Date dayCal(Date date, int num) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.add(Calendar.DATE, num);
		java.util.Date parsed = cal.getTime();
		return new Date(parsed.getTime());
	}

	@Autowired
	RestDAO rda;
	
	@Autowired
	MenuDAO mda;

	@RequestMapping("/Mypage_r/updateMenu.lunch")
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	ModelAndView mav = new ModelAndView();
        mav.setViewName("Mypage_r/updateMenu");	//이동할 페이지 지정
    	
        //String r_id = "rest1"; // test
        String r_id=(String)request.getSession().getAttribute("s_id");
        Date date = null;
		ArrayList<Date> dateList = new ArrayList<Date>(5);
		String datestr = request.getParameter("date");	//페이지로부터 날짜 받아오기
		System.out.println("UpdateMenuController datestr:" + datestr);
		if (datestr == null) {	//페이지로부터 날짜가 입력되지 않았다면
			date = new Date(System.currentTimeMillis());	//오늘 날짜를 구함
		} else {
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			java.util.Date parsed = format.parse(datestr);
			date = new Date(parsed.getTime());//날짜 문자열을 Date 타입으로 변환하기
		}
		System.out.println("UpdateMenuController date:" + date);
		ArrayList<MenuDTO> menuList = new ArrayList<MenuDTO>(5);
		ArrayList<Integer> m_countList = new ArrayList<Integer>(5);
		ArrayList<ArrayList<String>> m_arrayList = new ArrayList<ArrayList<String>>(5);
		
		MenuDTO mc=new MenuDTO();
		for (int i = 0; i < 5; i++) {	//5일치의 날짜 목록 생성하기
			dateList.add(dayCal(date, i - 2));
			System.out.println("UpdateMenuController d_array[" + i + "]:" + dateList.get(i));
			
			mc.setR_name(rda.getR_name(r_id));	//해당 식당 이름 삽입
			mc.setM_time(dateList.get(i));	//해당 날짜 삽입
			menuList.add(mda.getMenu(mc));	//해당 날짜의 메뉴 삽입
			System.out.println("UpdateMenuController menuList[" + i + "]:" + menuList.get(i));
			m_countList.add(menuList.get(i).getM_content().split("<br>").length);	//해당 날짜의 메뉴 개수를 삽입

			m_arrayList.add(mda.splitM_content(menuList.get(i).getM_content())); //해당 날짜의 메뉴 문자열을 <br>로 잘라서 어레이리스트로 변환하기
			if (m_arrayList.get(i).get(0).equals("")) {	//메뉴가 입력되지 않았다면
				m_countList.set(i, 0);	//해당 날짜의 메뉴 개수를 0으로 설정
			}
			System.out.println("UpdateMenuController m_countList[" + i + "]:" + m_countList.get(i));
				for (int j = 0; j < m_arrayList.get(i).size(); j++)	//메뉴 출력
					System.out.println(
							"UpdateMenuController m_arrayList.get(" + i + ", " + j + "):" + m_arrayList.get(i).get(j));
		}

		mav.addObject("dateList", dateList);	//이동할 페이지에 날짜 목록 삽입
		mav.addObject("date", date);	//이동할 페이지에 중간 날짜 삽입
		mav.addObject("menuList", menuList);	//이동할 페이지에 메뉴 목록 삽입
		mav.addObject("m_countList", m_countList);	//이동할 페이지에 메뉴 개수 삽입
		mav.addObject("m_arrayList", m_arrayList);	//이동할 페이지에 메뉴 어레이리스트 삽입
        
		return mav;
    }
}
