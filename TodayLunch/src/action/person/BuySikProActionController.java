package action.person;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.SikkwonDAO;
import beans.SikkwonDTO;

@Controller
public class BuySikProActionController{

	@Autowired
	SikkwonDAO sikdao;
	
	@RequestMapping("/Mypage_p/buySikPro.lunch") //호출경로
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception{
		// TODO Auto-generated method stub
		ModelAndView mav= new ModelAndView();
		mav.setViewName("/Mypage_p/buySikPro");
		
		String p_id=(String) request.getSession().getAttribute("s_id");
		//int s_num=Integer.getInteger(request.getParameter("s_num"));
		String r_name=(String) request.getParameter("r_name");
		System.out.println("BuySikProAction의 p_id="+p_id+"와"+r_name);
		
		SikkwonDTO sikt = new SikkwonDTO();
		sikt.setP_id(p_id);
		sikt.setR_name(r_name);
		sikt.setS_num(Integer.parseInt(request.getParameter("s_num")));
			
		boolean check=sikdao.updateSik(sikt);
		int a_num=sikdao.addSnum(sikt);
		System.out.println("buySikProAction의 check="+check+"a_num성공?"+a_num);
		
		mav.addObject("p_id", p_id);
		//mav.addObject("s_num", s_num);
		mav.addObject("check", check);
		mav.addObject("r_name", r_name);
		
		
		return mav;
	}

}
