
package cn.wizzer.modules.models.sys;

import java.io.Serializable;

import org.nutz.dao.entity.annotation.ColDefine;
import org.nutz.dao.entity.annotation.ColType;
import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.EL;
import org.nutz.dao.entity.annotation.Index;
import org.nutz.dao.entity.annotation.Name;
import org.nutz.dao.entity.annotation.Prev;
import org.nutz.dao.entity.annotation.Table;
import org.nutz.dao.entity.annotation.TableIndexes;

@Table("user_info")
@TableIndexes({ @Index(name="INDEX_USER_INFO_USERNAME", fields={ "username" }, unique=true) })
public class AppCmsUserInfoModel extends AppCmsModel implements Serializable {

	private static final long serialVersionUID = 1L;

	@Column
	@Name
	@ColDefine(type=ColType.VARCHAR, width=32)
	@Prev(els={ @EL("uuid()") })
	private String id = null;

	@Column
	@ColDefine(type=ColType.VARCHAR, width=120)
	private String username = null;

	@Column
	@ColDefine(type=ColType.VARCHAR, width=100)
	private String password = null;

	@Column
	@ColDefine(type=ColType.VARCHAR, width=100)
	private String alias = null;

	@Column
    @ColDefine(type=ColType.VARCHAR, width=255)
    private String email = null;

	@Column
    @ColDefine(type=ColType.INT)
	@Prev(els={ @EL("now()") })
    private Integer createdAt = null;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

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

	public String getAlias() {
		return alias;
	}

	public void setAlias(String alias) {
		this.alias = alias;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Integer createdAt) {
		this.createdAt = createdAt;
	}
}