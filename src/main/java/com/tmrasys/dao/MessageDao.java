package com.tmrasys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.tmrasys.domain.Message;
import com.tmrasys.domain.MessageText;

@Repository
public interface MessageDao {
	public void addMessage(Message message);

	public void addMessageText(MessageText messageText);

	public MessageText getMessageTextById(int msgTextId);

	/**
	 * 分页
	 * 
	 * @param receiveId
	 * @param start
	 * @param offset
	 * @return
	 */
	public List<Message> getMessagesByReceiveId(
			@Param(value = "receiveId") int receiveId,
			@Param(value = "start") int start,
			@Param(value = "offset") int offset);

	public int getMessagesCountByReceiveId(int receiveId);

	public void updateMessageStatus(@Param(value = "msgId") int msgId,
			@Param(value = "status") int status);

	public List<Message> getFullMessagesByReceiveId(
			@Param(value = "receiveId") int receiveId,
			@Param(value = "start") int start,
			@Param(value = "offset") int offset);
}
