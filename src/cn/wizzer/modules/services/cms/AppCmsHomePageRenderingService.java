
package cn.wizzer.modules.services.cms;

import java.util.ArrayList;
import java.util.List;

import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;

import cn.wizzer.common.util.AppCmsHtmlUtil;
import cn.wizzer.modules.models.cms.AppCmsCustSoluModel;
import cn.wizzer.modules.models.cms.AppCmsHomePagePb;
import cn.wizzer.modules.models.cms.Cms_article;
import cn.wizzer.modules.models.cms.Cms_channel;

@IocBean
public class AppCmsHomePageRenderingService {

	@Inject
    private CmsArticleService cmsArticleService = null;

	@Inject
	private CmsChannelService cmsChannelService = null;

	public void loadHomeMainPartial(AppCmsHomePagePb appCmsHomePagePb) {
		List<Cms_article> cms_article_list = cmsArticleService.query(Cnd.where("title", "like", "首页开题%"));
		for (Cms_article cms_article : cms_article_list) {
			if (cms_article.getTitle().equals("首页开题-题目")) {
				appCmsHomePagePb.setStrHomeMainTitle(AppCmsHtmlUtil.removeParagraph(cms_article.getContent()));
			}
			if (cms_article.getTitle().equals("首页开题-口号")) {
				appCmsHomePagePb.setStrHomeMainBanner(AppCmsHtmlUtil.removeParagraph(cms_article.getContent()));
			}
		}
	}

	public void loadHomeYzfuPartial(AppCmsHomePagePb appCmsHomePagePb) {
		Cms_article cms_article = cmsArticleService.fetch(Cnd.where("title", "=", "我们的优质服务"));
		appCmsHomePagePb.setTxtHomeYzfuSubtitle(cms_article.getInfo());
		appCmsHomePagePb.setTxtHomeYzfuParagraph(AppCmsHtmlUtil.appendParagraph(cms_article.getContent()));
		appCmsHomePagePb.setSrcHomeYzfuPic(cms_article.getPicurl());
	}

	public void loadHomeDzfaPartial(AppCmsHomePagePb appCmsHomePagePb) {
		List<Cms_channel> cms_channel_list = cmsChannelService.query(Cnd.where("path", "like", "00010003____").asc("location").asc("path"));
		List<AppCmsCustSoluModel> custSolus = new ArrayList<AppCmsCustSoluModel>();
		for (Cms_channel cms_channel : cms_channel_list) {
			Cms_article cms_article = cmsArticleService.fetch(Cnd.where("title", "=", cms_channel.getName()));
			AppCmsCustSoluModel custSolu = new AppCmsCustSoluModel(cms_article.getTitle(), cms_article.getPicurl(), cms_article.getInfo());
			custSolus.add(custSolu);
		}
		appCmsHomePagePb.setCustSolus(custSolus);
	}
}