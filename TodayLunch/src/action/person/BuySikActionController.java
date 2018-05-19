package action.person;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.SikkwonDAO;
import beans.SikkwonDTO;

@Controller
public class BuySikActionController{

	@Autowired
	SikkwonDAO sikdao;
	
	@RequestMapping("/Mypage_p/buySik.lunch") //호출경로
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception{
		// TODO Auto-generated method stub
		ModelAndView mav= new ModelAndView();
		mav.setViewName("/Mypage_p/buySik");
		String p_id=(String) request.getSession().getAttribute("s_id");
		//String r_name=(String) request.getSession().getAttribute("r_name");
		
		System.out.println("BuySikAction p_id="+p_id);
		
		SikkwonDTO sikt = new SikkwonDTO();
		int s_num=sikdao.getSnum(p_id);
		
		
		request.setAttribute("p_id", p_id);
		request.setAttribute("s_num", s_num);
		//request.setAttribute("r_name", r_name);
		
		
		return mav;
	}

}
