package action.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import beans.MemberDAO;
import beans.MemberDTO;
import java.util.*;

@Controller
public class LoginActionController{
	
	@Autowired
	MemberDAO mdao;

	@RequestMapping("/Login/login.lunch") //호출경로
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("login Controller 들어옴");
		MemberDTO mem=new MemberDTO();
		ModelAndView mav= new ModelAndView();
		mav.setViewName("/Login/login"); //이동할 페이지 지정
		String p_id=(String)request.getSession().getAttribute("s_id");
		String p_passwd=request.getParameter("p_passwd");		
		
		/*boolean login=mdao.login(mem);
		int grade=mdao.grade(p_id);*/
		
		mav.addObject("p_id", p_id);
		mav.addObject("p_passwd", p_passwd);
		
		
		return mav;
	}

}
