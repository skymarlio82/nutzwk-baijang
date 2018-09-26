
package cn.wizzer.modules.models.cms;

import java.util.List;

public class AppCmsHomePagePb {

	private String strHomeMainBanner = null;
	private String strHomeMainTitle = null;
	private String txtHomeYzfuSubtitle = null;
	private String txtHomeYzfuParagraph = null;
	private String srcHomeYzfuPic = null;
	private List<AppCmsCustSoluModel> custSolus = null;

	public AppCmsHomePagePb() {
		
	}

	public String getStrHomeMainBanner() {
		return strHomeMainBanner;
	}

	public void setStrHomeMainBanner(String strHomeMainBanner) {
		this.strHomeMainBanner = strHomeMainBanner;
	}

	public String getStrHomeMainTitle() {
		return strHomeMainTitle;
	}

	public void setStrHomeMainTitle(String strHomeMainTitle) {
		this.strHomeMainTitle = strHomeMainTitle;
	}

	public String getTxtHomeYzfuSubtitle() {
		return txtHomeYzfuSubtitle;
	}

	public void setTxtHomeYzfuSubtitle(String txtHomeYzfuSubtitle) {
		this.txtHomeYzfuSubtitle = txtHomeYzfuSubtitle;
	}

	public String getTxtHomeYzfuParagraph() {
		return txtHomeYzfuParagraph;
	}

	public void setTxtHomeYzfuParagraph(String txtHomeYzfuParagraph) {
		this.txtHomeYzfuParagraph = txtHomeYzfuParagraph;
	}

	public String getSrcHomeYzfuPic() {
		return srcHomeYzfuPic;
	}

	public void setSrcHomeYzfuPic(String srcHomeYzfuPic) {
		this.srcHomeYzfuPic = srcHomeYzfuPic;
	}

	public List<AppCmsCustSoluModel> getCustSolus() {
		return custSolus;
	}

	public void setCustSolus(List<AppCmsCustSoluModel> custSolus) {
		this.custSolus = custSolus;
	}
}