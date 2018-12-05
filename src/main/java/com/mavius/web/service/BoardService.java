package com.mavius.web.service;

import java.util.List;

import com.mavius.web.entity.Board;
import com.mavius.web.entity.Reply;
import com.mavius.web.entity.Report;

public interface BoardService {
	Board getBoard(int no);
	List<Board> getBoardList(int start);
	List<Board> getBoardList(int start, int cnt);
	List<Board> getBoardList(String name, int start);
	List<Board> getBoardList(String name, int start, int cnt);
	List<Board> getBoardList(String name, String keyword, int start);
	List<Board> getBoardList(String name, String keyword, int start, int cnt);
	List<Board> getBoardList(String name, String option, String keyword, int start);
	List<Board> getBoardList(String name, String option, String keyword, int start, int cnt);
	int reg(Board board);
	int edit(Board board);
	int delete(int boardNo);
	int claim(Report report);
	int recommend(String uid, int boardNo);
	int cancelRecommend(String uid, int boardNo);
	int regScrap(String uid, int boardNo);
	int cancelScrap(String uid, int boardNo);
	int reg(Reply reply);
	int delReply(int replyNo);
	List<Reply> getReplyList(int boardNo);
	
	
	
}
