package com.tmrasys.service;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.tmrasys.base.AbstractBaseTestConfig;
import com.tmrasys.service.sample.SampleService;

public class SampleServiceTest extends AbstractBaseTestConfig {
	@Autowired
	public SampleService sampleService;

	@Test
	public void getByEmployeeAndId() {
		System.out.println(sampleService.getByEmployeeAndId(3,
				String.valueOf(10)));
	}
}