package com.tmrasys.service.listener;

import org.springframework.context.ApplicationEvent;
import org.springframework.stereotype.Component;

import com.tmrasys.event.StatusChangedEvent;

@Component
public class SendMailListenerImpl implements TmrasysListener {

	@Override
	public void onApplicationEvent(ApplicationEvent event) {
		if(event instanceof StatusChangedEvent){
			System.out.println(this.getClass());
			System.out.println(event.getSource());
		}
	}

	@Override
	public int getOrder() {
		return 1;
	}

}
