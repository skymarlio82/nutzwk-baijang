
package cn.wizzer.modules.models.sys;

import java.io.Serializable;

import org.nutz.dao.entity.annotation.ColDefine;
import org.nutz.dao.entity.annotation.ColType;
import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.EL;
import org.nutz.dao.entity.annotation.Name;
import org.nutz.dao.entity.annotation.Prev;
import org.nutz.dao.entity.annotation.Table;

@Table("user_message")
public class AppCmsUserMessageModel extends AppCmsModel implements Serializable {

	private static final long serialVersionUID = 1L;

	@Column
	@Name
	@ColDefine(type=ColType.VARCHAR, width=32)
	@Prev(els={ @EL("uuid()") })
	private String id = null;

	@Column
	@ColDefine(type=ColType.VARCHAR, width=120)
	private String name = null;

	@Column
    @ColDefine(type=ColType.VARCHAR, width=100)
    private String email = null;

	@Column
    @ColDefine(type=ColType.VARCHAR, width=800)
    private String content = null;

	@Column
    @ColDefine(type=ColType.VARCHAR, width=20)
    private String createdAt = null;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}
}