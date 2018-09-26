
package cn.wizzer.modules.models.sys;

import org.nutz.json.Json;
import org.nutz.json.JsonFormat;
import org.nutz.lang.random.R;

import java.io.Serializable;

public abstract class AppCmsModel implements Serializable {

	private static final long serialVersionUID = 1L;

	public String toString() {
		return String.format("/*%s*/%s", super.toString(), Json.toJson(this, JsonFormat.compact()));
	}

	public Integer now() {
		return (int) (System.currentTimeMillis() / 1000);
	}

	public String uuid() {
		return R.UU32().toLowerCase();
	}
}