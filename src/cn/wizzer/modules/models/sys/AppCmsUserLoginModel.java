
package cn.wizzer.modules.models.sys;

import java.io.Serializable;

public class AppCmsUserLoginModel implements Serializable {

	private static final long serialVersionUID = 1L;

	private String username = null;
	private String password = null;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}