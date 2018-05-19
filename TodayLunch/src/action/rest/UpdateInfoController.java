package action.rest;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.*;

@Controller
public class UpdateInfoController {

	@Autowired
	RestDAO rda;
	
	@RequestMapping("/Mypage_r/updateInfo.lunch")
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//String r_id="rest1";//test
		String r_id=(String)request.getSession().getAttribute("s_id");
		RestCommand rest=new RestCommand();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Mypage_r/updateInfo");// 이동할 페이지 지정
		
		rest=rda.getRest(r_id);	//rest 테이블에서 식당 정보 받기
		RestCommand rest1=rda.getRest_Info(r_id);	//rest_info 테이블에서 식당 정보 받기
		rest.setR_wi(rest1.getR_wi());
		rest.setR_gy(rest1.getR_gy());
		rest.setR_name(rest1.getR_name());
		rest.setR_add(rest1.getR_add());
		rest.setR_info(rest1.getR_info());	//한 RestCommand에 식당 정보 합치기
		
		if(request.getParameter("r_wi")!=null) {	//만약 좌표가 입력됐다면
			rest.setR_wi(Double.parseDouble(request.getParameter("r_wi")));	//좌표 수정하기
			rest.setR_gy(Double.parseDouble(request.getParameter("r_gy")));
        	System.out.println("UpdateInfoAction r_wi:"+rest.getR_wi());
        }		
		mav.addObject("r_id", r_id);	//이동할 페이지에 식당 아이디 삽입
		mav.addObject("rest", rest);//이동할 페이지에 식당 정보 삽입
		return mav;
	}
}
