package action.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.ReviewCommand;
import beans.ReviewDao;

import java.sql.Timestamp;

@Controller
public class ReviewWriteProController {

	@Autowired
	ReviewDao re_dao;
	
	@RequestMapping("/Review/reviewWritePro.lunch")
	public ModelAndView requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
				
	     request.setCharacterEncoding("utf-8");
	     ReviewCommand review=new ReviewCommand();
	     ModelAndView mav=new ModelAndView();
	     mav.setViewName("Review/reviewWritePro");
	     
	     review.setRe_num(re_dao.getMaxNum()+1);//�Խñ۹�ȣ �ִ밪
	     System.out.println("ReviewWriteProAction re_num "+review.getRe_num());
	     review.setP_id((String)request.getSession().getAttribute("s_id"));//p_id������ ���Ǿ��̵� �޾ƿ���
	     String re_star=request.getParameter("re_star");
	     if(re_star=="")
	    	 re_star="0";
	     review.setRe_star(Double.parseDouble(re_star));//����
	     review.setRe_content(request.getParameter("re_content"));//����
	     review.setR_name(request.getParameter("r_name"));//�Ĵ��̸�
	     System.out.println("ReviewWriteProAction r_name "+review.getR_name());
	     review.setRe_time(new Timestamp(System.currentTimeMillis()));//�ð�
	   	   
	     re_dao.insert(review);
		
	     mav.addObject("r_name",request.getParameter("r_name"));
		return mav;
	}
}