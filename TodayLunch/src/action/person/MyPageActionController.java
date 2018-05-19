package action.person;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.*;

@Controller
public class MyPageActionController{

	@Autowired
	MemberDAO mdao;
	
	@Autowired
	SikkwonDAO sikdao;
	
	@RequestMapping("/Mypage_p/myPage.lunch") //호출경로
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception{
		// TODO Auto-generated method stub
		ModelAndView mav= new ModelAndView();
		mav.setViewName("/Mypage_p/myPage"); 
		
		
		String p_id=(String) request.getSession().getAttribute("s_id");
		//String p_siknum=request.getParameter("p_siknum");
		System.out.println("mypage="+p_id);
		
		mav.addObject("p_id", p_id);
		//mav.addObject("p_siknum",p_siknum);
		
	
		
		return mav;
	}

}
