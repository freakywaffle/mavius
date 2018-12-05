package com.mavius.web.service;

import java.util.List;

import com.mavius.web.entity.Message;

public interface MessageService {
	
	int sendMsg(Message msg);
	List<Message> getMsgList(String uid);
	int delMsg(int no);
	
}
