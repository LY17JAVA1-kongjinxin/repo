package com.qhit.utils;

import java.util.List;

public class Pager<T> {

	// 每页记录数
	private int recordPerPage = 3;
	// 当前页
	private int currentPage;
	// 总页数
	private int totalPage;
	// 总记录数
	private int totalRecords;

	private List<T> list;

	@SuppressWarnings("rawtypes")
	private static final Pager pager = new Pager();

	@SuppressWarnings("rawtypes")
	public static Pager getPager() {
		return pager;
	}

	/*
	 * 1.先设置总记录，如果要设置每页记录数，也需要先设置 2.再设置总页数 3.设置当前页面 4.返回当前页面的子list到list属性里面
	 */
	public List<T> queryPager(List<T> list, int currentPage) {
		// 先设置总记录
		this.setTotalRecords(list.size());
		// 再设置总页数
		this.setTotalPage();
		// 设置当前页面
		this.setCurrentPage(currentPage);
		if (list.size() > 0) {
			// 返回当前页面的子list到list属性里面
			if (this.currentPage == this.totalPage) {
				this.list = list.subList(this.recordPerPage * (this.currentPage - 1), this.totalRecords);
			} else {
				this.list = list.subList(this.recordPerPage * (this.currentPage - 1),
						this.currentPage * this.recordPerPage);
			}
			return this.getList();
		} else {
			return null;
		}
	}

	public int getRecordPerPage() {
		return recordPerPage;
	}

	public void setRecordPerPage(int recordPerPage) {
		this.recordPerPage = recordPerPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	/*
	 * 当前页要处理
	 */
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage <= 1 ? 1
				: currentPage >= this.getTotalPage() ? this.getTotalPage() : currentPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	/*
	 * 总页面数需要处理
	 */
	public void setTotalPage() {
		this.totalPage = this.totalRecords % this.recordPerPage == 0 ? this.totalRecords / this.recordPerPage
				: this.totalRecords / this.recordPerPage + 1;
	}

	public int getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	// 是否有下一页
	public boolean isHasNext() {
		boolean flag = false;
		if (this.getCurrentPage() < this.getTotalPage()) {
			flag = true;
		}
		return flag;
	}

	// 是否有上一页
	public boolean isHasPre() {
		boolean flag = false;
		if (this.getCurrentPage() > 1) {
			flag = true;
		}
		return flag;
	}

	// 上一页
	public int getPrePageNo() {
		if (isHasPre()) {
			return this.getCurrentPage() - 1;
		}
		return this.getCurrentPage();
	}

	// 下一页
	public int getNextPageNo() {
		if (isHasNext()) {
			return this.getCurrentPage() + 1;
		}
		return this.getCurrentPage();
	}
}
