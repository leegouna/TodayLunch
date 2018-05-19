package action.person;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.MemberDAO;
import beans.MemberDTO;

@Controller
public class UpdateInfoActionController{
	
	@Autowired
	MemberDAO mdao;
	
	@RequestMapping("/Mypage_p/updateInfo.lunch") //호출경로
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception{
		// TODO Auto-generated method stub
		ModelAndView mav= new ModelAndView();
		mav.setViewName("/Mypage_p/updateInfo");
		
		String p_id=(String) request.getSession().getAttribute("s_id");
		System.out.println("updateInfoAction="+p_id);

		MemberDTO mdto=mdao.getMember(p_id);
		
		mav.addObject("mdto", mdto);
		
		return mav;
	}

}
