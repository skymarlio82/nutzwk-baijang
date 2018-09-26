
package cn.wizzer.modules.services.cms;

import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;

import cn.wizzer.common.base.Service;
import cn.wizzer.modules.models.sys.AppCmsUserInfoModel;

@IocBean(args={ "refer:dao" })
public class AppCmsUserInfoService extends Service<AppCmsUserInfoModel> {

	public AppCmsUserInfoService(Dao dao) {
		super(dao);
	}
}