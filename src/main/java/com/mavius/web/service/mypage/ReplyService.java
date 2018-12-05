package com.mavius.web.service.mypage;

import java.util.List;

import com.mavius.web.entity.Reply;

public interface ReplyService {
	List<Reply> getReplyList(String uid, int start);
	List<Reply> getReplyList(String uid, int start, int cnt);
	List<Reply> getReplyList(String uid, String keyword, int start);
	List<Reply> getReplyList(String uid, String keyword, int start, int cnt);
	List<Reply> getReplyList(String uid, String option, String keyword, int start);
	List<Reply> getReplyList(String uid, String option, String keyword, int start, int cnt);
	
	int delReply(int no);
}
