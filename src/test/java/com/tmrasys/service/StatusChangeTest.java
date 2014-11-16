package com.tmrasys.service;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.tmrasys.base.AbstractBaseTestConfig;
import com.tmrasys.event.StatusMessage;
import com.tmrasys.service.handler.Handler;

public class StatusChangeTest extends AbstractBaseTestConfig {

	@Qualifier("mailHandler")
	@Autowired
	private Handler handler;

	@Test
	public void handle() {
		StatusMessage msg = new StatusMessage();
		msg.setContent("测试");
		handler.handle(msg);
	}

}
