package cn.wizzer.modules.services.sys;

import cn.wizzer.common.base.Service;
import cn.wizzer.modules.models.sys.Sys_unit;
import org.nutz.aop.interceptor.ioc.TransAop;
import org.nutz.dao.Chain;
import org.nutz.dao.Cnd;
import org.nutz.dao.Dao;
import org.nutz.dao.Sqls;
import org.nutz.ioc.aop.Aop;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;

/**
 * Created by wizzer on 2016/6/24.
 */
@IocBean(args = {"refer:dao"})
public class SysUnitService extends Service<Sys_unit> {
    public SysUnitService(Dao dao) {
        super(dao);
    }

    /**
     * 新增单位
     *
     * @param unit
     * @param pid
     */
    @Aop(TransAop.READ_COMMITTED)
    public void save(Sys_unit unit, String pid) {
        String path = "";
        if (!Strings.isEmpty(pid)) {
            Sys_unit pp = this.fetch(pid);
            path = pp.getPath();
        }
        unit.setPath(getSubPath("sys_unit", "path", path));
        unit.setParentId(pid);
        dao().insert(unit);
        if (!Strings.isEmpty(pid)) {
            this.update(Chain.make("hasChildren", true), Cnd.where("id", "=", pid));
        }
    }

    /**
     * 级联删除单位
     *
     * @param unit
     */
    @Aop(TransAop.READ_COMMITTED)
    public void deleteAndChild(Sys_unit unit) {
        dao().execute(Sqls.create("delete from sys_unit where path like @path").setParam("path", unit.getPath() + "%"));
        dao().execute(Sqls.create("delete from sys_user_unit where unitId=@id or unitId in(SELECT id FROM sys_unit WHERE path like @path)").setParam("id", unit.getId()).setParam("path", unit.getPath() + "%"));
        dao().execute(Sqls.create("delete from sys_role where unitid=@id or unitid in(SELECT id FROM sys_unit WHERE path like @path)").setParam("id", unit.getId()).setParam("path", unit.getPath() + "%"));
        if (!Strings.isEmpty(unit.getParentId())) {
            int count = count(Cnd.where("parentId", "=", unit.getParentId()));
            if (count < 1) {
                dao().execute(Sqls.create("update sys_unit set hasChildren=0 where id=@pid").setParam("pid", unit.getParentId()));
            }
        }
    }
}
