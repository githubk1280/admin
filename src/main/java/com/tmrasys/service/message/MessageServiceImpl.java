package com.tmrasys.service.message;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmrasys.dao.MessageDao;
import com.tmrasys.domain.Message;
import com.tmrasys.domain.MessageText;

@Service
public class MessageServiceImpl implements MessageService {
	@Autowired
	private MessageDao messageDao;

	@Override
	public void addMessage(Message message) {
		messageDao.addMessage(message);
	}

	@Override
	public void addMessageText(MessageText msgText) {
		messageDao.addMessageText(msgText);
	}

	@Override
	public MessageText getMessageTextById(int msgTextId) {
		return messageDao.getMessageTextById(msgTextId);
	}

	@Override
	public List<Message> getMessagesByReceiveId(int receiveId) {
		return messageDao.getMessagesByReceiveId(receiveId);
	}

	@Override
	public int getMessagesCountByReceiveId(int receiveId) {
		return messageDao.getMessagesCountByReceiveId(receiveId);
	}

}