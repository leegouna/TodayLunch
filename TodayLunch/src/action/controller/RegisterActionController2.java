package action.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import beans.MemberCommand;
import beans.MemberDAO;


@Controller
public class RegisterActionController2 {
	
	
	@Autowired
	MemberDAO memdao;
		
	//아무입력값없이 페이지 주소로 방문했을때 register2.jsp띄우라고 써준것임.
	@RequestMapping(value="/Register/register2.lunch" , method= {RequestMethod.GET})
	public ModelAndView getPage(HttpServletRequest request, 
            HttpServletResponse response) throws Exception {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("Register/register2");
		return mav;
	}
	
	//form에서 post방식으로 데이터를 보냈을때 처리할구문
		@RequestMapping(value="/Register/register2.lunch" , method= {RequestMethod.POST})
		public ModelAndView handleRequest(HttpServletRequest request, 
				                                                HttpServletResponse response) throws Exception {
			
		request.setCharacterEncoding("UTF-8");
		String r_id = request.getParameter("r_id");
		String r_passwd = request.getParameter("r_passwd");
		String r_email = request.getParameter("r_email");
		String r_phone = request.getParameter("r_phone");
		String r_wi = request.getParameter("r_wi");
		String r_gy = request.getParameter("r_gy");
		String r_name = request.getParameter("r_name");
		String r_add = request.getParameter("r_add");
		String r_info = request.getParameter("r_info");
		System.out.println("RegisterAction2 받은값=>" + r_id + r_passwd + r_email + r_phone+r_name+r_add+r_info);
		
		// ▲여기서 받은거 ▽r_~ 담는역할 ->register2.jsp로 돌려주기
		request.setAttribute("r_id", r_id);
		request.setAttribute("r_passwd", r_passwd);
		request.setAttribute("r_email", r_email);
		request.setAttribute("r_phone", r_phone);
		request.setAttribute("r_wi", r_wi);
		request.setAttribute("r_gy", r_gy);
		request.setAttribute("r_name", r_name);
		request.setAttribute("r_add", r_add);
		request.setAttribute("r_info", r_info);
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("Register/register2");//~.jsp  이동할 페이지 지정
		
		if (request.getParameter("r_id") != null ) {// 만약에 p_id에 들어온값이 있다면,if문을 써서 memberinsert메서드를 실행한다.
			
			MemberCommand memdto = new MemberCommand();  // register.jsp에서 사용자가p_id~ ,, 입력한것을 memdto멤버변수p_id~ 에 넣는다.
			memdto.setR_id(request.getParameter("r_id"));
			memdto.setR_passwd(request.getParameter("r_passwd"));
			memdto.setR_email(request.getParameter("r_email"));
			memdto.setR_phone(request.getParameter("r_phone"));
			memdto.setR_name(request.getParameter("r_name"));
			memdto.setR_wi(Double.parseDouble(request.getParameter("r_wi")));
			memdto.setR_gy(Double.parseDouble(request.getParameter("r_gy")));
			memdto.setR_add(request.getParameter("r_add"));
			memdto.setR_info(request.getParameter("r_info"));
			System.out.println("ResisterAction_ regForm2 들어온값확인!" + r_id + r_passwd);

			if (memdto != null) { // memdto에 값이저장되었으면
				boolean flag = memdao.memberInsert2(memdto); // memberDAO에 메서드 memberinsert를 실행해 (db에값저장시켜준다)
				System.out.println("flag=>" + flag);
				request.setAttribute("flag", flag);
				System.out.println(r_id+"님 회원가입성공! 로그인창으로 이동합니다~");
			}			
		}
		return mav;
	}
		//아이디 실시간 중복체크 테스트
		//아이디중복체크
		@ResponseBody
		@RequestMapping(value="/Register/register2=.lunch", method= {RequestMethod.POST})
		public ModelAndView checkID(HttpServletRequest request, 
	            HttpServletResponse response) throws Exception {
			ModelAndView mav=new ModelAndView();
			mav.setViewName("Register/register2");
			String r_id=request.getParameter("r_id");
			System.out.println("r_id="+r_id);
			boolean check=memdao.checkID(r_id);
			System.out.println("check=>"+check);
			mav.addObject("r_id", r_id);
			mav.addObject("check", check);
			return mav;
		}
		
		//식당이름 중복체크
		@ResponseBody
		@RequestMapping(value="/Register/register2==.lunch", method= {RequestMethod.POST})
		public ModelAndView checkRes(HttpServletRequest request, 
	        HttpServletResponse response) throws Exception {
			ModelAndView mav=new ModelAndView();
			mav.setViewName("Register/register2");
			
			String r_name=request.getParameter("r_name");
			System.out.println("r_name="+r_name);

			boolean namecheck=memdao.checkRes(r_name);
			System.out.println("check=>"+namecheck);
			
			mav.addObject("r_name", r_name);
			mav.addObject("namecheck", namecheck);
			
			return mav;		
		}
	}

