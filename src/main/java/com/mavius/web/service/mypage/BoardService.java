package com.mavius.web.service.mypage;

import java.util.List;

import com.mavius.web.entity.Board;

public interface BoardService {
	List<Board> getBoardList(String uid, int start);
	List<Board> getBoardList(String uid, int start, int cnt);
	List<Board> getBoardList(String uid, String keyword, int start);
	List<Board> getBoardList(String uid, String keyword, int start, int cnt);
	List<Board> getBoardList(String uid, String option, String keyword, int start);
	List<Board> getBoardList(String uid, String option, String keyword, int start, int cnt);
	
	int delBoard(int no);
}
