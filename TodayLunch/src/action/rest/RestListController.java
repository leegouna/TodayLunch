package action.rest;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.RestCommand;
import beans.RestDAO;

@Controller
public class RestListController {

	@Autowired
	RestDAO rda;

	@RequestMapping("/Rest/restList.lunch")
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Rest/restList");// 이동할 페이지 지정

		String i = request.getParameter("index"); // ajax로 페이지번호 받기
		System.out.println("RestListController i:" + i);
		int ii = 0;
		if (i != null) { // ajax에서 값을 보냈다면
			ii = Integer.parseInt(i); // 숫자로 변환하기
		}
		System.out.println("RestListController index:" + ii);
		//int allRestCount = rda.getAllRestCount(); // 모든 식당의 개수 구하기
		int pageSize = 4; // 한 번에 4개씩 로딩함
		int index = ii * pageSize; // 다음 번에 로딩할 페이지의 첫 번호
		HashMap<String, Integer> listScroll = new HashMap<String, Integer>(2);
		listScroll.put("pageRow", index);
		listScroll.put("pageSize", pageSize);
		List<RestCommand> allRest = rda.getAllRest(listScroll);	//다음 로딩할 식당 목록
		if(allRest.size()==0)
			allRest=null;
		
		mav.addObject("allRest", allRest);	//이동할 페이지에 식당 목록 삽입

		return mav;
	}

}
