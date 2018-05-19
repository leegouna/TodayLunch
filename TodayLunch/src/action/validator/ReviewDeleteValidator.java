
package action.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import beans.ReviewCommand;

public class ReviewDeleteValidator implements Validator{

	//@Override
	public boolean supports(Class<?> clazz) {
		return ReviewCommand.class.isAssignableFrom(clazz);
	}

	//@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pwd", "required");
	}
}
