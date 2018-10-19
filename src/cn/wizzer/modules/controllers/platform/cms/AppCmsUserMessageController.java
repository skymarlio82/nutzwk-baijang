
package cn.wizzer.modules.controllers.platform.cms;

import cn.wizzer.common.base.Result;
import cn.wizzer.common.util.DateUtil;
import cn.wizzer.modules.models.sys.AppCmsUserMessageModel;
import cn.wizzer.modules.services.cms.AppCmsUserMessageService;

import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.adaptor.JsonAdaptor;
import org.nutz.mvc.annotation.AdaptBy;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import javax.servlet.http.HttpSession;

@IocBean
@At("/app/cms/usermessage")
public class AppCmsUserMessageController {

	@Inject
	private AppCmsUserMessageService appCmsUserMessageService = null;

	@AdaptBy(type=JsonAdaptor.class)
	@At("/insertNew")
	@Ok("json")
	public Object insertNew(@Param("..") AppCmsUserMessageModel message, HttpSession session) {
		if (session.getAttribute("userInfo") == null) {
			return Result.error(1, "请先登录再提交消息");
		}
		message.setCreatedAt(DateUtil.getDateTime());
		appCmsUserMessageService.insert(message);
		return Result.success("system.success");
	}
}