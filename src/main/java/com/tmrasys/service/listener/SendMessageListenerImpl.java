package com.tmrasys.service.listener;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEvent;
import org.springframework.stereotype.Component;

import com.tmrasys.domain.Message;
import com.tmrasys.domain.MessageText;
import com.tmrasys.event.StatusChangedEvent;
import com.tmrasys.event.StatusMessage;
import com.tmrasys.service.message.MessageService;

@Component
public class SendMessageListenerImpl implements TmrasysListener {
	@Autowired
	private MessageService messageService;

	@Override
	public void onApplicationEvent(ApplicationEvent event) {
		if (event instanceof StatusChangedEvent) {
			StatusMessage msg = (StatusMessage) event.getSource();
			String content = String.format(msg.getContent());
			MessageText msgText = new MessageText(content);
			messageService.addMessageText(msgText);
			int msgTextId = msgText.getId();
			Message message = new Message ();
		}
	}

	@Override
	public int getOrder() {
		return 2;
	}

}
