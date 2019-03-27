package com.neusoft.pojo;

public class Page {
	
	private Integer startIndex;
	private Integer pageCount;
	public Page(Integer startIndex, Integer pageCount) {
		super();
		this.startIndex = startIndex;
		this.pageCount = pageCount;
	}
	public Page() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getStartIndex() {
		return startIndex;
	}
	public void setStartIndex(Integer startIndex) {
		this.startIndex = startIndex;
	}
	public Integer getPageCount() {
		return pageCount;
	}
	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}
	@Override
	public String toString() {
		return "Page [startIndex=" + startIndex + ", pageCount=" + pageCount + "]";
	}
	
	

}
