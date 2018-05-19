package action.rest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.RestDAO;
import beans.SikCommand;
import beans.SikDAO;
import util.StringSecure;

@Controller
public class UseSikController {

	@Autowired
	RestDAO rda;

	@Autowired
	SikDAO sikdao;

	@RequestMapping("/Mypage_r/useSik.lunch")
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Mypage_r/useSik");// 이동할 페이지 지정

		String p_id = StringSecure.convert(request.getParameter("p_id")); // 페이지로부터 개인회원 아이디 받기
		String p_siknum = StringSecure.convert(request.getParameter("p_siknum")); // 페이지로부터 식권 인증번호 받기
		// String r_name = "식당1";//test
		if (p_id == null || p_id.equals("") || p_siknum == null || p_siknum.equals("")) {
			String check = "아이디와 인증번호를<br>입력해주세요";
			mav.addObject("usesik", check);
		} else {
			String r_name = rda.getR_name((String) request.getSession().getAttribute("s_id"));
			SikCommand sik = new SikCommand();
			sik.setP_id(p_id);
			sik.setP_siknum(p_siknum);
			sik.setR_name(r_name);

			String check = sikdao.usesik(sik); // 아이디/식권 인증번호/개수 검사하고 모두 통과시 식권 하나 차감하기
			System.out.println("UseSikController check:" + check);
			mav.addObject("usesik", check); // 이동할 페이지에 식권 사용 결과 삽입
		}
		return mav;
	}

}
