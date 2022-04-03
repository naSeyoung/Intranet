package net.ezens.Intranet.common.paging;

import java.util.HashMap;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import net.ezens.Intranet.util.ParameterUtil;

@NoArgsConstructor
@AllArgsConstructor
public class PaginationInfo {

	private String sfield;
	private String smethod; 
	private String searchKeyword;
	private String searchType;

	private int totalcount = 0;						//전체 개수
	private int pagecount = 0;						//
	private int pagesize = 10;						//페이지당 출력할 데이터 개수 recordsPerPage
	private int cpage = 1;							//현재 페이지 번호
	private int minRow = (cpage - 1) * pagesize;	//startNumber
	private int maxRow = cpage * pagesize;			//maxNumber
//	화면 하단에 출력할 페이지 사이즈
	
	public PaginationInfo(PaginationInfo obj, String sf, String sm) {
		//sf("REG_DT"),sm("ASC")필요할 때
		setSfield(obj.getSfield(), sf);
		setSmethod(obj.getSmethod(), sm);
		setPagesize(obj.getPagesize()); 
		setCpage(obj.getCpage()); 
	}

	public String getSfield() {
		return sfield;
	}


	public void setSfield(Object sfield, String defsfield) {
		this.sfield = ParameterUtil.getParam(sfield, defsfield);
	}


	public String getSmethod() {
		return smethod;
	}


	public void setSmethod(Object smethod, String defsmethod) {
		this.smethod = ParameterUtil.getParam(smethod, defsmethod);
	}


	public int getTotalcount() {
		return totalcount;
	}


	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
		setPagecount(((totalcount - 1) / this.pagesize) + 1);
	}


	public int getPagecount() {
		return pagecount;
	}


	public void setPagecount(int pagecount) {
		this.pagecount = pagecount;
	}


	public int getPagesize() {
		return pagesize;
	}


	public void setPagesize(Object pagesize) {
		this.pagesize = ParameterUtil.getParam(pagesize, 40);
		setMinRow();
		setMaxRow();
	}


	public int getCpage() {
		return cpage;
	}


	public void setCpage(Object cpage) {
		this.cpage = ParameterUtil.getParam(cpage, 1);
		setMinRow();
		setMaxRow();
	}


	public int getMinRow() {
		return minRow;
	}


	public void setMinRow() {
		this.minRow = (this.cpage - 1) * this.pagesize;
	}


	public int getMaxRow() {
		return maxRow;
	}


	public void setMaxRow() {
		this.maxRow = this.cpage * this.pagesize;
	}
	

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public void mapPutPageInfo(HashMap<String, Object> param) {
//		param.put("snum", this.snum);
//		param.put("mnum", this.mnum);
//		param.put("sortField", this.sfield);
//		param.put("sortMethod", this.smethod);
	}
}
