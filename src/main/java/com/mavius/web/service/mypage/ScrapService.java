package com.mavius.web.service.mypage;

import java.util.List;

import com.mavius.web.entity.Board;

public interface ScrapService {
	List<Board> getScrapList(String uid, int start);
	List<Board> getScrapList(String uid, int start, int cnt);
	List<Board> getScrapList(String uid, String keyword, int start);
	List<Board> getScrapList(String uid, String keyword, int start, int cnt);
	List<Board> getScrapList(String uid, String option, String keyword, int start);
	List<Board> getScrapList(String uid, String option, String keyword, int start, int cnt);
	
	int cancelScrap(int no);
	
}
