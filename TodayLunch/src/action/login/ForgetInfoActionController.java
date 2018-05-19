package action.login;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.ForgetInfoDAO;
import mail.Email;

@Controller
public class ForgetInfoActionController {

	@Autowired
	ForgetInfoDAO fi;
	
	@RequestMapping("/Login/forget_Info.lunch") 
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		ModelAndView mav= new ModelAndView();
		mav.setViewName("/Login/forget_Info"); //이동할 페이지 지정
		
		String id ="";
		String email,result;
		
		email=request.getParameter("email");
		
		
		if(request.getParameter("id")!=null) {
			id=request.getParameter("id");
			
			HashMap<String, Object> map=new HashMap<String, Object>();
			map.put("id", id);
			map.put("email",email);
			result = fi.Forget_passwd(map)+"로 메일을 보냈습니다.";
			new Email().EmailSubmit(email, id , fi.get_passwd(id));
			
		}else {
			result="아이디는 "+fi.Forget_id(email);
			result+=" 입니다.";
		}
		System.out.println("ForgetInfoActionController result:"+result);
		
		if(result==null || result.equals("아이디는 null 입니다.") || result.equals("null로 메일을 보냈습니다.")) {
			result="정보가 없습니다";
		}
		mav.addObject("result", result);
		
		
		return mav;
	}

}
