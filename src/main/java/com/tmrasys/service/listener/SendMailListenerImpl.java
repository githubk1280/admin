package com.tmrasys.service.listener;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationEvent;
import org.springframework.stereotype.Component;

import com.tmrasys.event.StatusChangedEvent;
import com.tmrasys.event.StatusMessage;
import com.tmrasys.service.handler.Handler;

@Component
public class SendMailListenerImpl implements TmrasysListener {

	@Qualifier("mailHandler")
	@Autowired
	private Handler handler;

	@Override
	public void onApplicationEvent(ApplicationEvent event) {
		if (event instanceof StatusChangedEvent) {
			StatusMessage msg = (StatusMessage) event.getSource();
			handler.handle(msg);
		}
	}

	@Override
	public int getOrder() {
		return 1;
	}

}
