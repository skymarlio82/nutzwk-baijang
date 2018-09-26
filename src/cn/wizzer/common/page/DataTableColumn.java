
package cn.wizzer.common.page;

public class DataTableColumn {

	protected String data = null;
	protected String name = null;
	protected boolean searchable = false;
	protected boolean orderable = false;

	public DataTableColumn() {
		
	}

	public DataTableColumn(String data, String name, boolean searchable, boolean orderable) {
		
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean isSearchable() {
		return searchable;
	}

	public void setSearchable(boolean searchable) {
		this.searchable = searchable;
	}

	public boolean isOrderable() {
		return orderable;
	}

	public void setOrderable(boolean orderable) {
		this.orderable = orderable;
	}
}