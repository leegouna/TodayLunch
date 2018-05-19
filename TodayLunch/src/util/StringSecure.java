package util;

public class StringSecure {

	public static String convert(String input) {
		if (input != null) {
			input = input.replace(">", "&gt;");
			input = input.replace("<", "&lt;");
			input = input.replace("(", "&#40;");
			input = input.replace(")", "&#41;");
			input = input.replace("\"", "&quot;");
			input = input.replace("\'", "&apos;");
		}
		return input;
	}
}
