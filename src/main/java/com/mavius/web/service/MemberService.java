package com.mavius.web.service;


import com.mavius.web.entity.Member;

public interface MemberService {
	Member getMember(String id);
	int edit(Member member);
	int delete(Member member);
}
