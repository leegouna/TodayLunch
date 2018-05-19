package action.admin;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import beans.AdminDAO;
import beans.AdminDTO;

@Controller
public class AdminNoticeController {
	@Autowired
	AdminDAO dao;
	
	@RequestMapping("Admin/notichWrite.lunch")
	public ModelAndView writeNotice(HttpServletRequest request){
		
		AdminDTO dto = new AdminDTO();
		dto.setNo_content(request.getParameter("no_content"));
		dao.writeNotice(dto); 
		
		return new ModelAndView("redirect:/Admin/noticeList.lunch");
	}
	
	@RequestMapping("Admin/noticeList.lunch")
	public ModelAndView listNotice(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("Admin/noticeList");
//		if(request.getParameter("no_content")!=null) { //액션을 따로 안만들고 글 작성 후 리스트로 돌아오기 위해 이렇게 써봄
//			dao.writeNotice(request.getParameter("no_content"));
//		}
//		if(request.getParameter("no_num")!=null) {//액션을 따로 안만들고 글삭제 후 바로 리스트로 돌아오기 위한 구문
//			dao.deleteNotice(request.getParameter("no_num"));
//		}
		//request.setAttribute("list", dao.getNotice());
		mav.addObject("list", dao.getNotice());
		
		return mav;
	}
	
	@RequestMapping("Admin/noticeDelete.lunch")
	public ModelAndView noticeDelete(HttpServletRequest request) {
		
		if(request.getParameter("no_num")!=null) { //액션을 따로 안만들고 글 작성 후 리스트로 돌아오기 위해 이렇게 써봄
			dao.deleteNotice(request.getParameter("no_num"));
			
		}
		return new ModelAndView("redirect:/Admin/noticeList.lunch");
	}
	
	@RequestMapping("Admin/noticeUpdate.lunch")
	public ModelAndView noticeUpdate(@RequestParam("no_num") String no_num,
			@RequestParam("no_content") String no_content) {
		
		if(no_content!=null) { //액션을 따로 안만들고 글 작성 후 리스트로 돌아오기 위해 이렇게 써봄
			Map map = new HashMap();
			map.put("no_num", no_num);
			map.put("no_content", no_content);
			dao.updateNotice(map);
		}
		return new ModelAndView("redirect:/Admin/noticeList.lunch");
	}
	
	@RequestMapping("notice.lunch")
	public ModelAndView notice() {
		
		

		ModelAndView mav = new ModelAndView("jsonView");
		mav.addObject("list", dao.getNotice());
		
		return mav;
		
//		String result="기본값";
//		
//		System.out.println("<tr><td>이게 공지번호입니다</td><td>아마 이게 내용이구요</td><td>날짜</td></tr>");
//		for(int i=0;i<list.size();i++) {
//			AdminDTO dto = (AdminDTO) list.get(i);
//		System.out.println("<tr>"+ 
//				"<td>"+dto.getNo_num()+"</td>" + 
//				"<td>"+dto.getNo_time()+"</td>"+
//				"<td>"+dto.getNo_content()+"</td></tr>");
//		}
	}
	
	
}
