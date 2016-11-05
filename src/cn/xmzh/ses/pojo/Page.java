package cn.xmzh.ses.pojo;

public class Page {
	private int itemCount; // 每页中显示的数量
	private int currentPage; // 当前页码
	private int pageCount; // 总页数
	private int showPage; // 每页中显示页码的数量

	{
		showPage = 10; // 默认显示10个页码
		currentPage = 0; // 当前页码默认从0开始
		itemCount = 15; // 每页显示15条记录
	}

	public Page() {
	}

	public Page(int itemCount, int currentPage, int pageCount, int showPage) {
		this.itemCount = itemCount;
		this.currentPage = currentPage;
		this.pageCount = pageCount;
		this.showPage = showPage;
	}

	public int getItemCount() {
		return itemCount;
	}

	public void setItemCount(int itemCount) {
		this.itemCount = itemCount;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getShowPage() {
		return showPage;
	}

	public void setShowPage(int showPage) {
		this.showPage = showPage;
	}

	@Override
	public String toString() {
		return "Page [itemCount=" + itemCount + ", currentPage=" + currentPage
				+ ", pageCount=" + pageCount + ", showPage=" + showPage + "]";
	}

}
