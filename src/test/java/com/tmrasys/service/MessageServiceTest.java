package com.tmrasys.service;

import java.util.Date;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.tmrasys.base.AbstractBaseTestConfig;
import com.tmrasys.domain.Message;
import com.tmrasys.domain.MessageText;
import com.tmrasys.service.message.MessageService;

public class MessageServiceTest extends AbstractBaseTestConfig {

	@Autowired
	MessageService messageService;

	@Test
	public void addMessageText() {
		MessageText text = new MessageText("message test");
		messageService.addMessageText(text);
		System.out.println(text.getId());
	}
	
	@Test
	public void addMessage() {
		MessageText text = new MessageText("message test");
		messageService.addMessageText(text);
		int msgTextId = text.getId();
		Message msg = new Message();
		msg.setMsgTextId(msgTextId);
		msg.setSenderId(0);
		msg.setReceiveId(3);
		msg.setStatus(1);
		msg.setSendTime(new Date());
		messageService.addMessage(msg);
		System.out.println(msg.getMessageId());
		
	}
	
	@Test
	public void getMessageTextById() {
		System.out.println(messageService.getMessageTextById(2));
	}
	
	@Test
	public void getMessagesByReceiveId() {
		System.out.println(messageService.getMessagesByReceiveId(3));
	}
}
