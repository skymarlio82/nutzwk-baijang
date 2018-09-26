
package cn.wizzer.common.constant;

import java.util.Hashtable;

public class AppCmsConstant {

	public final static Hashtable<String, String> htGsfu = new Hashtable<String, String>();
	public final static Hashtable<String, String> htGybj = new Hashtable<String, String>();
	public final static Hashtable<String, String> htZscq = new Hashtable<String, String>();
	public final static Hashtable<String, String> htXxzx = new Hashtable<String, String>();

	static {
		htGsfu.put("zcgs", "注册公司");
		htGsfu.put("dljz", "代理记账");
		htGsfu.put("cwzx", "财务咨询");
		htGsfu.put("gsbg", "工商变更");
		htGsfu.put("gszx", "公司注销");
		htGsfu.put("sbdl", "社保代理");
		htGsfu.put("sbzc", "商标注册");
		htGsfu.put("zzdb", "资质代办");

		htGybj.put("gsjs", "公司介绍");
		htGybj.put("tdjs", "团队介绍");
		htGybj.put("qyxx", "企业形象");
		htGybj.put("ywjs", "业务介绍");

		htZscq.put("logosj", "LOGO设计");
		htZscq.put("qyxcpzz", "企业宣传片制作");
		htZscq.put("zlfw", "专利服务");
		htZscq.put("bqfw", "版权服务");

		htXxzx.put("mhkf", "门户开发");
		htXxzx.put("appzz", "APP制作");
		htXxzx.put("xtwh", "系统维护");
		htXxzx.put("qyxxh", "企业信息化");
	}
}