
package cn.wizzer.modules.services.cms;

import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;

import cn.wizzer.common.base.Service;
import cn.wizzer.modules.models.sys.AppCmsUserMessageModel;

@IocBean(args={ "refer:dao" })
public class AppCmsUserMessageService extends Service<AppCmsUserMessageModel> {

	public AppCmsUserMessageService(Dao dao) {
		super(dao);
	}
}