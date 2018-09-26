
package cn.wizzer.common.util;

public class AppCmsHtmlUtil {

	public static String removeParagraph(String htmlContent) {
		if (htmlContent == null || htmlContent.trim().equals("")) {
			return "";
		}
		// remove initial <p>
		htmlContent = htmlContent.trim().substring(3);
		// remove final </p>
		return htmlContent.substring(0, htmlContent.length() - 4);
	}

	public static String appendParagraph(String htmlContent) {
		if (htmlContent == null || htmlContent.trim().equals("")) {
			return "";
		}
		if (htmlContent.trim().startsWith("<p>") && htmlContent.trim().endsWith("</p>")) {
			return htmlContent;
		}
		return "<p>" + htmlContent.trim() + "</p>";
	}
}