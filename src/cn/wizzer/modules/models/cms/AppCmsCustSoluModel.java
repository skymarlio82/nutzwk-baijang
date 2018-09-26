
package cn.wizzer.modules.models.cms;

public class AppCmsCustSoluModel {

	private String title = null;
	private String imgUrl = null;
	private String content = null;

	public AppCmsCustSoluModel() {
		
	}

	public AppCmsCustSoluModel(String title, String imgUrl, String content) {
		this.title = title;
		this.imgUrl = imgUrl;
		this.content = content;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}