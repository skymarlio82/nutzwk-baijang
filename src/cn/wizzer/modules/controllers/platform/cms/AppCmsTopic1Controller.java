
package cn.wizzer.modules.controllers.platform.cms;

import javax.servlet.http.HttpServletRequest;

import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import cn.wizzer.common.constant.AppCmsConstant;
import cn.wizzer.common.util.AppCmsHtmlUtil;
import cn.wizzer.modules.models.cms.Cms_article;
import cn.wizzer.modules.services.cms.CmsArticleService;

@IocBean
@At("/app/cms/topic1")
public class AppCmsTopic1Controller {

	@Inject
    private CmsArticleService cmsArticleService = null;

	@At("")
	@Ok("->:/topic-tmpl-03.jsp")
	public void index(@Param("id") String id, HttpServletRequest httpRequest) {
		Cms_article cms_article = cmsArticleService.fetch(Cnd.where("title", "=", AppCmsConstant.htGybj.get(id)));
		httpRequest.setAttribute("topic_title", cms_article.getTitle());
		httpRequest.setAttribute("topic_pic", cms_article.getPicurl());
		httpRequest.setAttribute("topic_p", AppCmsHtmlUtil.appendParagraph(cms_article.getContent()));
	}
}