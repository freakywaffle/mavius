package com.mavius.web.service;

import java.util.List;

import java.util.Map;

import javax.servlet.http.Part;

import com.mavius.web.entity.Board;
import com.mavius.web.entity.BoardFile;
import com.mavius.web.entity.BoardView;
import com.mavius.web.entity.Reply;
import com.mavius.web.entity.ReportReason;

public interface BoardService {

	Map<String,Object> getBoardListById(String uid, int page);
	Map<String,Object> getBoardListById(String uid, int page, int cnt);
	Map<String,Object> getBoardListById(String uid,  int page, String keyword);
	Map<String,Object> getBoardListById(String uid, int page, int cnt, String keyword); //cnt 컬럼수
	Map<String,Object> getBoardListById(String uid, int page, String keyword, String catalog);
	Map<String,Object> getBoardListById(String uid, int page, int cnt, String keyword, String catalog);
	

	BoardView getBoard(int no);
	Map<String, Object> getBoardList(int page);
	Map<String, Object> getBoardList(int page, int cnt);
	Map<String, Object> getBoardList(String name, int page);
	Map<String, Object> getBoardList(String name, int page, int cnt);
	Map<String, Object> getBoardList(String name, int page, String keyword);
	Map<String, Object> getBoardList(String name, int page, int cnt, String keyword);
	Map<String, Object> getBoardList(String name, int page, String option, String keyword);
	Map<String, Object> getBoardList(String name, int page, int cnt, String option, String keyword);
	Map<String, Object> getBoardList(String name, String category, int page);
	Map<String, Object> getBoardList(String name, String category, int page, int cnt);
	Map<String, Object> getBoardList(String name, String category, String keyword, int page);
	Map<String, Object> getBoardList(String name, String category, String keyword, int page, int cnt);
	Map<String, Object> getBoardList(String name, String category, String option, String keyword, int page);
	Map<String, Object> getBoardList(String name, String category, String option, String keyword, int page, int cnt);
	
	List<String> getBoardCategoryList(String name);
	int reg(Board board); //게시물 번호 리턴
	int reg(Board board, Part part, String path); //게시물 번호 리턴, 파일업로드 이렇게 하는게 맞는지 애매함
	int edit(Board board);
	int delete(int boardNo);
	int claim(ReportReason report);
	int recommend(String uid, int boardNo, int sep);
	
	int regScrap(String uid, int boardNo);
	int cancelScrap(String uid, int boardNo);
	int reg(Reply reply);
	int delReply(int replyNo);
	List<Reply> getReplyListByBoardNo(int boardNo);

	List<ReportReason> getReportReason();
	int regReport(int reportedNo, String contentEtc,String reason, String reporterId, String type);
	

	List<BoardFile> getBoardFileListByBoardNo(int boardNo);
	
	List<BoardView> getBoardViewList(int page);
	

	
	
	
}
