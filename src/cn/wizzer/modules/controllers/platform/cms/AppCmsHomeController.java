
package cn.wizzer.modules.controllers.platform.cms;

import javax.servlet.http.HttpServletRequest;

import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;

import cn.wizzer.modules.models.cms.AppCmsHomePagePb;
import cn.wizzer.modules.services.cms.AppCmsHomePageRenderingService;
import cn.wizzer.modules.services.cms.CmsArticleService;

@IocBean
@At("/app/cms/home")
public class AppCmsHomeController {

	@Inject
    private CmsArticleService cmsArticleService = null;

	@Inject
    private AppCmsHomePageRenderingService appCmsHomePageRenderingService = null;

	@At("")
	@Ok("->:/index.jsp")
	public void index(HttpServletRequest httpRequest) {
		System.out.println("====>>>> ====>>>> java.io.tmpdir = " + System.getProperty("java.io.tmpdir"));
		AppCmsHomePagePb appCmsHomePagePb = new AppCmsHomePagePb();
		appCmsHomePageRenderingService.loadHomeMainPartial(appCmsHomePagePb);
		appCmsHomePageRenderingService.loadHomeYzfuPartial(appCmsHomePagePb);
		appCmsHomePageRenderingService.loadHomeDzfaPartial(appCmsHomePagePb);
		httpRequest.setAttribute("appCmsHomePagePb", appCmsHomePagePb);
	}
}