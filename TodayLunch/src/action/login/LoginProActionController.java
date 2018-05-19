package action.login;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import beans.MemberDTO;
import beans.MemberDAO;
import beans.HistoryDAO;
import beans.HistoryDTO;



@Controller
public class LoginProActionController{

	@Autowired
	MemberDAO mdao;
	
	@Autowired
	HistoryDAO history;
	
	@RequestMapping("/Login/loginPro.lunch") //호출경로
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception{
		// TODO Auto-generated method stub
		ModelAndView mav= new ModelAndView();
		mav.setViewName("/Login/loginPro");
		System.out.println("LoginProActionController 들어옴!!");
		String p_id=request.getParameter("p_id");
		String p_passwd=request.getParameter("p_passwd");
		//int grade=Integer.parseInt(request.getParameter("grade"));
		String ip=request.getRemoteAddr();
		System.out.println("login id="+p_id+"p_passwd"+p_passwd);
		
		boolean check=false;
		if(!p_id.equals("") && !p_passwd.equals("")) {
		MemberDTO mem=new MemberDTO();
		mem.setP_id(p_id);
		mem.setP_passwd(p_passwd);
		/*
		 Map<String,Object> map=new HashMap<String,Object>();
		      map.put("p_id", mem.getP_id()); //("객체에 넣는 값",꺼내오는 값)
		      map.put("p_passwd",mem.getP_passwd());
		      
		      login메서드의 매개변수를 (Map<String,Object>mem)
		 */
		Map<String, Object> map =new HashMap<String,Object>();
		map.put("p_id", mem.getP_id());
		map.put("p_passwd", mem.getP_passwd());
		System.out.println(map);
		check=mdao.login(map);
		
		System.out.println("LoginProActionController의 check=>"+check);
		if(check) {
		int grade=mdao.grade(p_id);
		request.getSession().setAttribute("grade", grade);	
		}
		}
		HistoryDTO his=new HistoryDTO();
		his.setId(p_id);
		his.setIp(ip);
		his.setCon_time(new Timestamp(System.currentTimeMillis()));
		his.setCon_result(check);
		
		System.out.println(his.getId());
		
		history.infoInsert(his);
		
		
			
		mav.addObject("p_id", p_id);
		mav.addObject("p_passwd",p_passwd);
		mav.addObject("check", check);
		System.out.println("login pro p_id"+p_id+"p_passwd"+p_passwd);
		
		return mav;
	}

	

}
