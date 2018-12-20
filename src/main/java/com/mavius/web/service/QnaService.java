package com.mavius.web.service;

import java.util.Map;

import com.mavius.web.entity.Qna;

public interface QnaService 
{
	int sendQna(Qna qna);
	
	Map<String,Object> getMyQnaList(String uid, int page, int cnt);
	Map<String,Object> getMyQnaList(String uid, String during,int page, int cnt);
	
	
	Map<String,Object> getAdminQnaList(int page, int cnt);
	Map<String,Object> getAdminQnaList(String during, int page, int cnt);
	
	int answerQna(Qna qna);
}
