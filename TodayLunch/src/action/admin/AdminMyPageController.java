package action.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminMyPageController {

	@RequestMapping(value="Admin/myPage.lunch",method=RequestMethod.GET)
	public String goAdmin() {
		
		
		return "Admin/adminMyPage";
	}
	
}
