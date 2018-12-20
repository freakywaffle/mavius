package com.mavius.web.service;

import com.mavius.web.entity.Member;

public interface ConfirmService {
	
	Member getMember(String uid); //중복체크
	Member getMember(String id, String nickName, String pwd); //회원가입
	
	int join(Member member);
	
	int memberChk(String uid);
	
}