package com.qhit.utils;

import java.util.List;

public class Pager<T> {

	// ÿҳ��¼��
	private int recordPerPage = 3;
	// ��ǰҳ
	private int currentPage;
	// ��ҳ��
	private int totalPage;
	// �ܼ�¼��
	private int totalRecords;

	private List<T> list;

	@SuppressWarnings("rawtypes")
	private static final Pager pager = new Pager();

	@SuppressWarnings("rawtypes")
	public static Pager getPager() {
		return pager;
	}

	/*
	 * 1.�������ܼ�¼�����Ҫ����ÿҳ��¼����Ҳ��Ҫ������ 2.��������ҳ�� 3.���õ�ǰҳ�� 4.���ص�ǰҳ�����list��list��������
	 */
	public List<T> queryPager(List<T> list, int currentPage) {
		// �������ܼ�¼
		this.setTotalRecords(list.size());
		// ��������ҳ��
		this.setTotalPage();
		// ���õ�ǰҳ��
		this.setCurrentPage(currentPage);
		if (list.size() > 0) {
			// ���ص�ǰҳ�����list��list��������
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
	 * ��ǰҳҪ����
	 */
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage <= 1 ? 1
				: currentPage >= this.getTotalPage() ? this.getTotalPage() : currentPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	/*
	 * ��ҳ������Ҫ����
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

	// �Ƿ�����һҳ
	public boolean isHasNext() {
		boolean flag = false;
		if (this.getCurrentPage() < this.getTotalPage()) {
			flag = true;
		}
		return flag;
	}

	// �Ƿ�����һҳ
	public boolean isHasPre() {
		boolean flag = false;
		if (this.getCurrentPage() > 1) {
			flag = true;
		}
		return flag;
	}

	// ��һҳ
	public int getPrePageNo() {
		if (isHasPre()) {
			return this.getCurrentPage() - 1;
		}
		return this.getCurrentPage();
	}

	// ��һҳ
	public int getNextPageNo() {
		if (isHasNext()) {
			return this.getCurrentPage() + 1;
		}
		return this.getCurrentPage();
	}
}
