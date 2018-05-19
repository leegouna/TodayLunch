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
public class UpdateInfoProActionController {
	
	@Autowired
	MemberDAO mdao;
	
	@RequestMapping("/Mypage_p/updateInfoPro.lunch") //호출경로
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception{
		// TODO Auto-generated method stub
		ModelAndView mav= new ModelAndView();
		mav.setViewName("/Mypage_p/updateInfoPro");
		String p_id=(String) request.getAttribute("s_id");
		System.out.println("updateInfoProAction="+p_id);
		
		MemberDTO memd=new MemberDTO();
		memd.setP_id(request.getParameter("p_id"));
		memd.setP_passwd(request.getParameter("p_passwd"));
		memd.setP_email(request.getParameter("p_email"));
		memd.setP_name(request.getParameter("p_name"));
		memd.setP_check(Boolean.parseBoolean(request.getParameter("p_check")));
		memd.setP_siknum(request.getParameter("p_siknum"));
				
		boolean check=mdao.personUpdate(memd);
		System.out.println("updateInfoProAction의 회원수정유무 check=>"+check);
		
		request.setAttribute("p_id", p_id);
		request.setAttribute("check",check);
		
		return mav;
	}

}
