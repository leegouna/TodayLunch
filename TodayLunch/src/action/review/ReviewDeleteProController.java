package action.review;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.ReviewDao;

@Controller
public class ReviewDeleteProController {

	@Autowired
	ReviewDao re_dao;
	
	@RequestMapping("/Review/reviewDeletePro.lunch")
	public ModelAndView deletePro(HttpServletRequest request) throws Throwable {
		// TODO Auto-generated method stub
		ModelAndView mav=new ModelAndView();
		
		Map<String,Object> map=new HashMap<String,Object>();
		   int re_num=Integer.parseInt(request.getParameter("re_num"));//�Խñ۹�ȣ
		   String r_name=request.getParameter("r_name");//�Ĵ��̸�
		   String pageNum=request.getParameter("pageNum");//��������ȣ
		   String p_id=(String) request.getSession().getAttribute("s_id");
		   String s_id=p_id;

		   System.out.println("reviewDeletePro re_num=>"+re_num+",pageNum=>"+pageNum);
		   		   
		   map.put("re_num", re_num);
		   map.put("p_id",p_id);
		   map.put("s_id",s_id);
		   System.out.println("p_id=>"+p_id+" s_id=>"+s_id);
		   re_dao.delete(map);//����

		   mav.addObject("pageNum", pageNum);
		   mav.addObject("r_name",r_name);
		   
		return mav;
	}
}


