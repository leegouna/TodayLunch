package action.review;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import action.validator.ReviewValidator;
import beans.ReviewCommand;
import beans.ReviewDao;

@Controller
public class ReviewWriteController {

	private Logger log=Logger.getLogger(this.getClass());
	
	private ReviewDao re_dao;
	
	@Autowired
	public void setReviewDao(ReviewDao re_dao) {
		this.re_dao=re_dao;
	}
	
	@RequestMapping("/Review/reviewWrite.lunch")
	public String submit(@ModelAttribute("review") ReviewCommand review,BindingResult result){
		if(log.isDebugEnabled()) {
			log.debug("ReviewCommand "+review);
		}
		//1.DB에 저장하기전에 유효성 검사(필수 입력했는지 안했는지 체크)
				new ReviewValidator().validate(review, result);
				//만약 에러 발생, result.hasErrors()->true or false
				if(result.hasErrors()) {
					return "redirect:/Review/reviewWrite.lunch";	//다시 초기화해서 입력(페이지 이동)
				}
				//최대값+1
				int re_num=re_dao.getMaxNum()+1;
				review.setRe_num(re_num);
						
		return "redirect:/Review/reviewWritePro.lunch";		
	}
}
