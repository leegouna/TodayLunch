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
public class DeletePersonActionController{
	
	@Autowired
	MemberDAO mdao;
		
	@RequestMapping("/Mypage_p/deletePerson.lunch") //호출경로
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception{
		// TODO Auto-generated method stub
		ModelAndView mav= new ModelAndView();
		mav.setViewName("/Mypage_p/deletePerson");
		
		String p_id=(String) request.getSession().getAttribute("s_id");
		String p_passwd=request.getParameter("p_passwd");
		System.out.println("deletePersonAction의 p_id 와 p_passwd="+p_id+p_passwd);
	
		//만약에 암호가 null이 아니라면
		if(p_passwd !=null) {			
		MemberDTO mdto = new MemberDTO();
		mdto.setP_id(p_id);
		mdto.setP_passwd(p_passwd);
		
		int p=mdao.deletePerson(mdto); //삭제 성공 하면 1 아니면 0
		
		System.out.println("deletePersonAction의 p="+p);
		 if(p>0) {
			 System.out.println("deletePersonAction p 성공?"+p);
			 request.getSession().invalidate();
			 return new ModelAndView("redirect:/main.lunch"); //메인으로 이동
			 
		 }else {
			 mav.addObject("p",p);
		 }
		}

		mav.addObject("p_id", p_id);
		mav.addObject("p_passwd", p_passwd);
		
		return mav;
	}

}
