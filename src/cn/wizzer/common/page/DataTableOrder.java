
package cn.wizzer.common.page;

public class DataTableOrder {

	protected int column = 0;
	protected String dir = null;

	public DataTableOrder() {
		
	}

	public DataTableOrder(int column, String dir) {
		this.column = column;
		this.dir = dir;
	}

	public int getColumn() {
		return column;
	}

	public void setColumn(int column) {
		this.column = column;
	}

	public String getDir() {
		return dir;
	}

	public void setDir(String dir) {
		this.dir = dir;
	}
}