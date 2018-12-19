package com.mavius.web.service;


import java.util.List;

import com.mavius.web.entity.Member;
import com.mavius.web.entity.MemberView;

public interface MemberService {
	
	List<MemberView> getViewList();
	List<MemberView> getViewList(int page);
	
	MemberView getViewList(String id);
	
	
	
	Member getMember(String id);
	int edit(Member member);
	int delete(Member member);
	
}
