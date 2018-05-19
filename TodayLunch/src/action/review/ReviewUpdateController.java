package action.review;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import beans.ReviewCommand;
import beans.ReviewDao;

@Controller
public class ReviewUpdateController {
	
	@Autowired
	ReviewDao re_dao;
	
	@RequestMapping(value="/Review/reviewUpdate.lunch")
	public ModelAndView update(HttpServletRequest request,@RequestParam("re_num")int re_num) throws Throwable {
		// TODO Auto-generated method stub
		
		ReviewCommand review=re_dao.updateGetArticle(re_num);//게시글 번호로 수정할 게시글 띄우기
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("Review/reviewUpdate");
		
		String pageNum=request.getParameter("pageNum");
		
		mav.addObject("pageNum", pageNum);
		mav.addObject("review",review);
			
		return mav;
	}
	
	@RequestMapping(value="/Review/reviewUpdatePro.lunch")
	public ModelAndView submit(HttpServletRequest request) throws Throwable {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("Review/reviewUpdatePro");
		
		request.setCharacterEncoding("utf-8");
	    String pageNum=request.getParameter("pageNum");
	    String r_name=request.getParameter("r_name");
	   
	    Map<String,Object> map=new HashMap<String,Object>();		   
		   map.put("p_id",request.getParameter("p_id"));
		   map.put("s_id",request.getSession().getAttribute("s_id"));
		   map.put("re_num", Integer.parseInt(request.getParameter("re_num")));
		   map.put("r_name",request.getParameter("r_name"));		    
		   map.put("re_content",request.getParameter("re_content"));
		   map.put("re_time",new Timestamp(System.currentTimeMillis()));
		   map.put("re_star",Double.parseDouble(request.getParameter("re_star")));
	   System.out.println("ReviewUpdateProController p_id:"+request.getParameter("p_id")+
			   " s_id:"+request.getSession().getAttribute("s_id"));
	   int check=re_dao.update(map);//num=0
		
	   mav.addObject("pageNum", pageNum);
	   mav.addObject("r_name", r_name);
	   mav.addObject("check", check);

		return mav;
	}	
}
