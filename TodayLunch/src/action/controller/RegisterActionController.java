package action.controller;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import beans.BookmarkDAO;
import beans.MemberCommand;
import beans.MemberDAO;
import beans.MemberDTO;


@Controller
public class RegisterActionController {
	
	@Autowired
	MemberDAO memdao;
	
	//아무입력값없이 페이지 주소로 방문했을때 register.jsp띄우라고 써준것임.
	@RequestMapping(value="/Register/register.lunch" , method= {RequestMethod.GET})
	public ModelAndView getPage(HttpServletRequest request, 
            HttpServletResponse response) throws Exception {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("Register/register");
		return mav;
	}
	
	//form에서 post방식으로 데이터를 보냈을때 처리할구문
	@RequestMapping(value="/Register/register.lunch" , method= {RequestMethod.POST})
	public ModelAndView handleRequest(HttpServletRequest request, 
			                                                HttpServletResponse response) throws Exception {
		
		
		request.setCharacterEncoding("UTF-8");
		String p_id = request.getParameter("p_id");
		String p_passwd = request.getParameter("p_passwd");
		String p_email = request.getParameter("p_email");
		String p_name = request.getParameter("p_name");
		String p_siknum = request.getParameter("p_siknum");
		System.out.println("RegisterActionController 받은값=>" + p_id + p_passwd + p_email + p_email + p_name + p_siknum);
		
		request.setAttribute("p_id", p_id);
		request.setAttribute("p_passwd", p_passwd);
		request.setAttribute("p_email", p_email);
		request.setAttribute("p_name", p_name);
		request.setAttribute("p_siknum", p_siknum);
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("Register/register");//list.jsp  이동할 페이지 지정
		
		if (request.getParameter("p_id") != null) {// 만약에 p_id에 들어온값이 있다면,if문을 써서 memberinsert메서드를 실행한다.
			MemberCommand memdto = new MemberCommand(); // register.jsp에서 사용자가p_id~ ,, 입력한것을 memdto멤버변수p_id~ 에 넣는다.
			memdto.setP_id(request.getParameter("p_id"));
			memdto.setP_passwd(request.getParameter("p_passwd"));
			memdto.setP_email(request.getParameter("p_email"));
			memdto.setP_name(request.getParameter("p_name"));
			memdto.setP_siknum(request.getParameter("p_siknum"));
			System.out.println("ResisterAction_ regForm2 들어온값확인!" + p_id + p_passwd);

			if (memdto != null) { // memdto에 값이저장되었으면
				boolean flag = memdao.memberInsert(memdto); // memberDAO에 메서드 memberinsert를 실행해 (db에값저장시켜준다)
				System.out.println("flag=>" + flag);
				request.setAttribute("flag", flag);//이게뭐지?
				System.out.print(p_id+"님 회원가입성공! 로그인창으로 이동합니다~");
			}			
		}
		return mav;
	}
	
	
	//아이디중복체크
	@ResponseBody
	@RequestMapping(value="/Register/register=.lunch", method= {RequestMethod.POST})
	public ModelAndView checkID(HttpServletRequest request, 
            HttpServletResponse response) throws Exception {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("Register/register");
		String p_id=request.getParameter("p_id");
		System.out.println("p_id="+p_id);		
		boolean check=memdao.checkID(p_id);
		System.out.println("check=>"+check);

		mav.addObject("p_id", p_id);
		mav.addObject("check", check);

		return mav;
	}
	
}
