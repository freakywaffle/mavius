package com.mavius.web.service.mypage;

import java.util.List;

import com.mavius.web.entity.Board;

public interface BoardService
{
	
	List<Board> getBoardListById(String uid, int page);
	List<Board> getBoardListById(String uid, int page, int cnt);
	List<Board> getBoardListById(String uid, String keyword, int page);
	List<Board> getBoardListById(String uid, String keyword, int page, int cnt); //cnt 컬럼수
	List<Board> getBoardListById(String uid, String option, String keyword, int page);
	List<Board> getBoardListById(String uid, String option, String keyword, int page, int cnt);
	
//	int delBoard(int no);
	
}
