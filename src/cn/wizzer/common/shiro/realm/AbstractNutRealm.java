package cn.wizzer.common.shiro.realm;

import cn.wizzer.modules.models.sys.Sys_role;
import cn.wizzer.modules.models.sys.Sys_user;
import cn.wizzer.modules.services.sys.SysRoleService;
import cn.wizzer.modules.services.sys.SysUserService;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.nutz.ioc.Ioc;
import org.nutz.lang.Lang;
import org.nutz.mvc.Mvcs;

public abstract class AbstractNutRealm extends AuthorizingRealm {

    private SysUserService userService;
    private SysRoleService roleService;

    protected SysUserService getUserService() {
        if (Lang.isEmpty(userService)) {
            Ioc ioc = Mvcs.getIoc();
            userService = ioc.get(SysUserService.class);
        }
        return userService;
    }

    protected SysRoleService getRoleService() {
        if (Lang.isEmpty(roleService)) {
            Ioc ioc = Mvcs.getIoc();
            roleService = ioc.get(SysRoleService.class);
        }
        return roleService;
    }

    /**
     * 更新用户授权信息缓存.
     */
    public void clearCachedAuthorizationInfo(String principal) {
        SimplePrincipalCollection principals = new SimplePrincipalCollection(principal, getName());
        clearCachedAuthorizationInfo(principals);
    }

    /**
     * 清除所有用户授权信息缓存.
     */
    public void clearAllCachedAuthorizationInfo() {
        Cache<Object, AuthorizationInfo> cache = getAuthorizationCache();
        if (cache != null) {
            for (Object key : cache.keys()) {
                cache.remove(key);
            }
        }
    }

    /**
     * 授权查询回调函数, 进行鉴权但缓存中无用户的授权信息时调用.
     */
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        Sys_user user = (Sys_user) principals.getPrimaryPrincipal();
        if (!Lang.isEmpty(user)) {
            SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
            info.addRoles(getUserService().getRoleCodeList(user));
            for (Sys_role role : user.getRoles()) {
                if (!role.isDisabled())
                    info.addStringPermissions(getRoleService().getPermissionNameList(role));
            }
            return info;
        } else {
            return null;
        }
    }
}
