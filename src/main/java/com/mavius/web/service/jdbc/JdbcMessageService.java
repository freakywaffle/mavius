package com.mavius.web.service.jdbc;

import java.util.List;

import com.mavius.web.entity.Message;
import com.mavius.web.entity.MessageView;
import com.mavius.web.service.MessageService;

public class JdbcMessageService implements MessageService {

	@Override
	public int sendMsg(Message msg) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Message> getMsgList(String uid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delMsg(int no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<MessageView> getMsgViewList(Message msg) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MessageView> getMsgViewList(MessageView msg) {
		// TODO Auto-generated method stub
		return null;
	}

}
