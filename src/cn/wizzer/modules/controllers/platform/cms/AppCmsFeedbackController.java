
package cn.wizzer.modules.controllers.platform.cms;

import cn.wizzer.common.page.DataTableColumn;
import cn.wizzer.common.page.DataTableOrder;
import cn.wizzer.modules.services.cms.AppCmsUserMessageService;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import java.util.List;

@IocBean
@At("/platform/cms/feedback")
public class AppCmsFeedbackController {

	@Inject
	private AppCmsUserMessageService appCmsUserMessageService = null;

	@At("")
	@Ok("beetl:/platform/cms/feedback/index.html")
	@RequiresPermissions("platform.cms.feedback")
	public void index() {
		
	}

	@At("/data")
	@Ok("json:full")
	@RequiresPermissions("platform.cms.feedback")
	public Object data(@Param("length") int length, @Param("start") int start, @Param("draw") int draw, @Param("::order") List<DataTableOrder> order, @Param("::columns") List<DataTableColumn> columns) {
		Cnd cnd = Cnd.NEW();
		return appCmsUserMessageService.data(length, start, draw, order, columns, cnd, null);
	}
}