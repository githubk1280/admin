package com.tmrasys.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tmrasys.domain.Message;
import com.tmrasys.domain.MessageText;

@Repository
public interface MessageDao {
	public void addMessage(Message message);

	public void addMessageText(MessageText messageText);

	public MessageText getMessageTextById(int msgTextId);

	public List<Message> getMessagesByReceiveId(int receiveId);
}
