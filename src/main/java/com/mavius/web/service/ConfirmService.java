package com.mavius.web.service;

import com.mavius.web.entity.Member;

public interface ConfirmService {
	Member getMember(String id, String pwd);	
	
	int join(Member member);

}