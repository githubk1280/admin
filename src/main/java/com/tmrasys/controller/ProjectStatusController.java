package com.tmrasys.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tmrasys.event.Message;
import com.tmrasys.event.StatusChangedEvent;
import com.tmrasys.service.employee.EmployeeService;

@Controller
@RequestMapping("/status")
public class ProjectStatusController implements ApplicationContextAware {
	Logger logger = Logger.getLogger(getClass());

	private ApplicationContext applicationContext;

	@Autowired
	private EmployeeService employeeService;

	@RequestMapping("/{projectId}")
	public void load(@PathVariable int projectId) {
		
	}

	@RequestMapping("/add")
	public void add() {
		// insert
		//
		// this.notifyObservers(arg); userId,projectId,percentage,content
		applicationContext.publishEvent(new StatusChangedEvent(new Message()));
	}

	@Override
	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		this.applicationContext = applicationContext;
	}

}
