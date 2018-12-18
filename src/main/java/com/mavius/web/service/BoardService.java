package com.mavius.web.service;

import java.util.List;

import javax.servlet.http.Part;

import com.mavius.web.entity.Board;
import com.mavius.web.entity.BoardFile;
import com.mavius.web.entity.BoardView;
import com.mavius.web.entity.Reply;
import com.mavius.web.entity.Report;

public interface BoardService {

	Board getBoardListById(String uid, int page);
	Board getBoardListById(String uid, int page, int cnt);
	Board getBoardListById(String uid,  int page, String keyword);
	Board getBoardListById(String uid, int page, int cnt, String keyword); //cnt 컬럼수
	Board getBoardListById(String uid, int page, String keyword, String catalog);
	Board getBoardListById(String uid, int page, int cnt, String keyword, String catalog);

	int getBoardListCountAll();
	int getBoardListCountByName(String name);
	BoardView getBoard(int no);
	List<BoardView> getBoardList(int page);
	List<BoardView> getBoardList(int page, int cnt);
	List<BoardView> getBoardList(String name, int page);
	List<BoardView> getBoardList(String name, int page, int cnt);
	List<BoardView> getBoardList(String name, int page, String keyword);
	List<BoardView> getBoardList(String name, int page, int cnt, String keyword);
	List<BoardView> getBoardList(String name, int page, String option, String keyword);
	List<BoardView> getBoardList(String name, int page, int cnt, String option, String keyword);
	List<BoardView> getBoardList(String name, String category, int page);
	List<BoardView> getBoardList(String name, String category, int page, int cnt);
	List<BoardView> getBoardList(String name, String category, String keyword, int page);
	List<BoardView> getBoardList(String name, String category, String keyword, int page, int cnt);
	List<BoardView> getBoardList(String name, String category, String option, String keyword, int page);
	List<BoardView> getBoardList(String name, String category, String option, String keyword, int page, int cnt);
	List<String> getBoardCategoryList(String name);
	int reg(Board board); //게시물 번호 리턴
	int reg(Board board, Part part, String path); //게시물 번호 리턴, 파일업로드 이렇게 하는게 맞는지 애매함
	int edit(Board board);
	int delete(int boardNo);
	int claim(Report report);
	int recommend(String uid, int boardNo);
	int cancelRecommend(String uid, int boardNo);
	int regScrap(String uid, int boardNo);
	int cancelScrap(String uid, int boardNo);
	int reg(Reply reply);
	int delReply(int replyNo);
	List<Reply> getReplyListByBoardNo(int boardNo);
	List<BoardFile> getBoardFileListByBoardNo(int boardNo);
	
	
	
}
