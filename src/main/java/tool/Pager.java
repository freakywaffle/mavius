package tool;

public class Pager {
	private double pageCnt; //한 페이지 보여줄 게시글 개수
	private int pagerCnt; //페이저에 보여질 페이징 개수
	private int page; //선택된 페이지 번호
	private int startPage; //페이저에서 시작페이지번호
	private int endPage; //페이저에서 마지막 페이지번호
	private int boardCnt; //불러올 데이터의 총 개수
	private int maxPage; //페이저로 보여줄수 있는 가장 큰 번호
	
	
	public Pager() {
		
	}


	public Pager(int pageCnt, int pagerCnt, int page, int boardCnt) {
		this.pageCnt = (double)pageCnt;
		this.pagerCnt = pagerCnt;
		this.page = page;
		this.boardCnt = boardCnt;
		startPage = pagerCnt*(page/pagerCnt)+1;
		if(startPage>page)
			startPage -= pagerCnt;
		endPage = startPage+pagerCnt-1; 
		maxPage = (int)Math.ceil(boardCnt/this.pageCnt);
		if(endPage > maxPage) {
			endPage = maxPage;
		}
	}


	public double getPageCnt() {
		return pageCnt;
	}


	public void setPageCnt(double pageCnt) {
		this.pageCnt = pageCnt;
	}


	public int getPagerCnt() {
		return pagerCnt;
	}


	public void setPagerCnt(int pagerCnt) {
		this.pagerCnt = pagerCnt;
	}


	public int getPage() {
		return page;
	}


	public void setPage(int page) {
		this.page = page;
	}


	public int getStartPage() {
		return startPage;
	}


	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}


	public int getEndPage() {
		return endPage;
	}


	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}


	public int getBoardCnt() {
		return boardCnt;
	}


	public void setBoardCnt(int boardCnt) {
		this.boardCnt = boardCnt;
	}


	public int getMaxPage() {
		return maxPage;
	}


	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}
	
	
	
}
