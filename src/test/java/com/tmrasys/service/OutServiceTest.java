package com.tmrasys.service;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.tmrasys.base.AbstractBaseTestConfig;
import com.tmrasys.service.outSource.OutSourceService;

public class OutServiceTest extends AbstractBaseTestConfig {

	@Autowired
	OutSourceService outSourceService;

	@Test
	public void testLoadProjectById() {
		// System.out.println(outSourceService.getOutSourceByProjectId(30));
		System.out.println(outSourceService.getByEmployee(3));
	}

}
