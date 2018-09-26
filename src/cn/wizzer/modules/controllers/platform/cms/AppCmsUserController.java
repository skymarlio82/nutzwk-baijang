
package cn.wizzer.modules.controllers.platform.cms;

import cn.wizzer.common.base.Result;
import cn.wizzer.modules.models.sys.AppCmsUserInfoModel;
import cn.wizzer.modules.models.sys.AppCmsUserLoginModel;
import cn.wizzer.modules.services.cms.AppCmsUserInfoService;

import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.adaptor.JsonAdaptor;
import org.nutz.mvc.annotation.AdaptBy;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import javax.servlet.http.HttpSession;

@IocBean
@At("/app/cms/user")
public class AppCmsUserController {

	@Inject
	private AppCmsUserInfoService appCmsUserInfoService = null;

	@AdaptBy(type=JsonAdaptor.class)
	@At("/doLogin")
	@Ok("json")
	public Object doLogin(@Param("..") AppCmsUserLoginModel user, HttpSession session) {
		AppCmsUserInfoModel userInfo = appCmsUserInfoService.fetch(Cnd.where("username", "=", user.getUsername()));
		if (userInfo == null) {
			return Result.error(1, "用户不存在");
		}
		if (!userInfo.getPassword().equals(user.getPassword())) {
			return Result.error(2, "密码错误");
		}
		session.setAttribute("userInfo", userInfo);
		return Result.success("login.success");
	}

	@At("/logout")
	@Ok("json")
	public Object logout(HttpSession session) {
		session.removeAttribute("userInfo");
		return Result.success("system.success");
	}

	@AdaptBy(type=JsonAdaptor.class)
	@At("/doRegister")
	@Ok("json")
	public Object doRegister(@Param("..") AppCmsUserInfoModel user, HttpSession session) {
		AppCmsUserInfoModel userInfo = appCmsUserInfoService.fetch(Cnd.where("username", "=", user.getUsername()));
		if (userInfo != null) {
			return Result.error(1, "用户已经存在");
		}
		appCmsUserInfoService.insert(user);
		return Result.success("system.success");
	}
}