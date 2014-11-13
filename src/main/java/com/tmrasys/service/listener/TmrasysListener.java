package com.tmrasys.service.listener;

import org.springframework.context.ApplicationEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.core.Ordered;

public interface TmrasysListener extends ApplicationListener<ApplicationEvent>,
		Ordered {

}
