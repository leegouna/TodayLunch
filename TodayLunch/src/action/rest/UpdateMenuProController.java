package action.rest;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.MenuDTO;
import util.StringSecure;
import beans.MenuDAO;
import beans.MenuDTO;

@Controller
public class UpdateMenuProController {
	
	@Autowired
	MenuDAO mda;

	@RequestMapping("/Mypage_r/updateMenuPro.lunch")
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
        mav.setViewName("Mypage_r/updateMenuPro");	//이동할 페이지 지정
    	
		Date dateTime = Date.valueOf(request.getParameter("date"));	//페이지로부터 날짜 받기
		System.out.println("UpdateMenuProController dateTime=" + dateTime);

		int m_count = Integer.parseInt(request.getParameter("m_count"));	//페이지로부터 메뉴 개수 받기
		System.out.println("UpdateMenuProController m_count=" + m_count);
		String m_content = "";
		String[] content = new String[m_count];
		if (m_count > 0) {
			for (int i = 0; i < m_count; i++) {
				content[i] = StringSecure.convert(request.getParameter("content" + i));
				System.out.println("UpdateMenuProController content[" + i + "]=" + content[i]);
				if(!content[i].equals("")) {	//메뉴가 입력되었다면
					m_content += content[i]+"<br>";	//<br>로 구분해 메뉴 문자열에 삽입
				}
			}
			
			//마지막 <br> 빼기
			m_content=m_content.substring(0, m_content.lastIndexOf("<br>"));
			System.out.println("UpdateMenuProController m_content="+m_content);
			
			MenuDTO menu = new MenuDTO();
			menu.setR_name(request.getParameter("r_name"));
			menu.setM_time(dateTime);
			menu.setM_content(m_content);
			System.out.println("set menu:" + menu.getR_name() + ", " + menu.getM_time() + ", " + menu.getM_content());

			int check = mda.updateMenu(menu);	//메뉴 수정하기
			mav.addObject("check", check);	//이동할 페이지에 메뉴 수정 결과 삽입
		}
		
		
		mav.addObject("dateTime", dateTime);	//이동할 페이지에 수정된 날짜 삽입
		System.out.println("UpdateMenuProController dateTime="+dateTime);
		return mav;
	}

}
