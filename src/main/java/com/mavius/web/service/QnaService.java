package com.mavius.web.service;

import java.util.List;

import com.mavius.web.entity.Qna;

public interface QnaService {
	int sendQna(Qna qna);
	
	List<Qna> getMyQnaList();
	List<Qna> getMyQnaList(String during);
	List<Qna> getAdminQnaList(String during);
	List<Qna> getAdminQnaList(String uid, String during);
	
	int answerQna(Qna qna);
}
