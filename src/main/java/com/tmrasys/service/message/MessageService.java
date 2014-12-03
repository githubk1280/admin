package com.tmrasys.service.message;

import java.util.List;

import com.tmrasys.domain.Message;
import com.tmrasys.domain.MessageText;

public interface MessageService {
	public void addMessage(Message message);

	public void addMessageText(MessageText msgText);

	public MessageText getMessageTextById(int msgTextId);

	public List<Message> getMessagesByReceiveId(int receiveId, int p,
			int defaultPageSize);

	public int getMessagesCountByReceiveId(int receiveId);

	public void updateMessageStatus(int msgId, int status);

	public List<Message> getFullMessagesByReceiveId(int employeeId, int p,
			int defaultPageSize);
}
