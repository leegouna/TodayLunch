package action.rest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.*;
import util.StringSecure;

@Controller
public class DeleteRestController {
	
	@Autowired
	RestDAO rda;

	@RequestMapping("/Mypage_r/deleteRest.lunch")
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Mypage_r/deleteRest");// 이동할 페이지 지정
		//String r_id = "fds";//test
		String r_id = (String) request.getSession().getAttribute("s_id");
		String r_passwd = StringSecure.convert(request.getParameter("r_passwd"));	//입력한 비밀번호 얻기
		System.out.println("DeleteRestController의 r_id 와 r_passwd=" + r_id + r_passwd);

		if (r_passwd != null) {	//입력한 비밀번호가 공백문자가 아니라면
			RestCommand rest=new RestCommand();
			rest.setR_id(r_id);	//식당 아이디
			rest.setR_passwd(r_passwd);	//식당 비밀번호
			rest.setR_name(rda.getR_name(r_id));	//식당 이름
			int p = rda.deleteRest(rest);	//삭제 메소드 호출 
			System.out.println("DeleteRestController의 p=" + p);
			if (p >0) {	//삭제 성공
				System.out.println("DeleteRestController p 성공?" + p);
				request.getSession().invalidate();	//세션 삭제
				//디렉토리 내의 파일 삭제 후 디렉토리도 삭제
				
				return new ModelAndView("redirect:/main.lunch");	//메인 페이지로 이동
			} else {	//삭제 실패
				mav.addObject("p", p);
			}
		}

		mav.addObject("r_id", r_id);	//r_id값 전달

		return mav;
	}

}
