package com.tmrasys.controller;

import javax.annotation.PostConstruct;

import org.apache.log4j.Logger;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tmrasys.constant.page.PageResourceConstant;
import com.tmrasys.domain.Employee;
import com.tmrasys.event.Message;
import com.tmrasys.event.StatusChangedEvent;
import com.tmrasys.service.employee.EmployeeService;

@Controller
@RequestMapping("/user")
public class UserController implements ApplicationContextAware{
	Logger logger = Logger.getLogger(getClass());
	
	private ApplicationContext applicationContext;

	@Autowired
	private EmployeeService employeeService;

	@PostConstruct
	public void init() {
	}

	@RequestMapping("/add")
	public ModelAndView add(Employee employee) {
		Employee exist = employeeService.getEmployeeByName(employee.getName());
		ModelAndView view = new ModelAndView();
		if(null == exist){
			employeeService.addEmployee(employee);
			view.addObject("newuser", employee);
		}
		view.setViewName(PageResourceConstant.USER_ADD_RESULT);
		applicationContext.publishEvent(new StatusChangedEvent(new Message(1,2,"test")));
		return view;
	}

	@RequestMapping("/add-redirect")
	public ModelAndView addRedirect() {
		Employee employee = new Employee();
		ModelAndView view = new ModelAndView();
		view.addObject("newuser", employee);
		view.setViewName(PageResourceConstant.USER_ADD);
		return view;

	}

	@Override
	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		this.applicationContext = applicationContext;
	}


}
