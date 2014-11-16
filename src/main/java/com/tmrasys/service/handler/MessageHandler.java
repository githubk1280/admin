package com.tmrasys.service.handler;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.tmrasys.domain.Message;
import com.tmrasys.domain.MessageText;
import com.tmrasys.enums.MessageStatusEnum;
import com.tmrasys.event.StatusMessage;
import com.tmrasys.service.employee.EmployeeService;
import com.tmrasys.service.message.MessageService;

@Component("messageHandler")
public class MessageHandler implements Handler {

	@Autowired
	private MessageService messageService;

	@Autowired
	private EmployeeService employeeService;

	@Override
	public void handle(Object obj) {

		String content = ((StatusMessage) obj).getContent();
		MessageText msgText = new MessageText(content);
		messageService.addMessageText(msgText);
		int msgTextId = msgText.getId();
		// 本项目下的所有用户
		List<Integer> employeeIds = employeeService
				.getEmployeesByProjectId(((StatusMessage) obj).getProjectId());
		Message message = null;
		for (Integer employeeId : employeeIds) {
			message = new Message();
			message.setSenderId(0);
			message.setReceiveId(employeeId);
			message.setMsgTextId(msgTextId);
			message.setSendTime(new Date());
			message.setStatus(MessageStatusEnum.UNREAD.getValue());
			messageService.addMessage(message);
		}
	}

}
