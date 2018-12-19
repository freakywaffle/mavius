package com.mavius.web.service;

import java.util.List;

import com.mavius.web.entity.Member;
import com.mavius.web.entity.MemberAuth;

public interface AuthService {

	String getDefaultAuthId(String memberId);
	
	Member getMember(String uid);
	
	List<MemberAuth> getMemberAuthsById(String uid);
	
	//boolean hasAuth(String uid, String authName);
	
	
}
