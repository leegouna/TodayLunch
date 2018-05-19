package action.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import beans.ReviewCommand;

//유효성검사->사용자로부터 입력받은 값을 검사->제대로 입력했는지를 체크
//1.Validator인터페이스를 상속
public class ReviewValidator implements Validator {

	//1.유효성검사 대상인지 아닌지 체크 메소드(BoardCommand)DTO
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		//형식)적용시킬 클래스명.isAssignableFrom(clazz객체명)
		return ReviewCommand.class.isAssignableFrom(clazz);
	}

	/*게시판의 글쓰기를 하고자할때 유효성을 검사해주는 메소드
	  1.유효성 검사대상자(웹입력) 2.에러 발생시 저장할 에러정보객체명
*/	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		//1.에러발생된 객체정보 2.웹상에서 입력받는 필드명 3.에러코드명
		//required.pwd를 찾아서 출력 등록
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pwd", "required");
		//pwd입력부분에 값을 입력하지 않으면 등록된 에러코드를 찾아서 출력 등록
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "writer", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "title", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "content", "required");
	}

}
