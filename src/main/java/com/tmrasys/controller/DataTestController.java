package com.tmrasys.controller;

import javax.annotation.PostConstruct;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tmrasys.service.DataService;

@Controller
@RequestMapping("/project")
public class DataTestController {
	Logger logger = Logger.getLogger(getClass());
	@Autowired
	DataService dataService;

	@PostConstruct
	public void init() {
		logger.info("post ----------------------" + dataService);
	}

	@RequestMapping("/load")
	public String loadProjectById() {
		logger.info(dataService.loadProjectById(1));
		return "booking";

	}

}
