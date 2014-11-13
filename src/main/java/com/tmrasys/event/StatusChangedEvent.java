package com.tmrasys.event;

import org.springframework.context.ApplicationEvent;

public class StatusChangedEvent extends ApplicationEvent {
	private static final long serialVersionUID = -4458501723843345182L;

	public StatusChangedEvent(Message message) {
		super(message);
	}

	@Override
	public Object getSource() {
		return super.getSource();
	}

}
