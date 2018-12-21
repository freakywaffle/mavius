package com.mavius.web.service;

import java.util.List;

import com.mavius.web.entity.Message;
import com.mavius.web.entity.MessageView;

public interface MessageService {
	
	int sendMsg(Message msg);
	List<Message> getMsgList(String uid);
	int delMsg(int no);
	
	List<MessageView> getMsgViewList(Message msg);
	List<MessageView> getMsgViewList(MessageView msg);
}
