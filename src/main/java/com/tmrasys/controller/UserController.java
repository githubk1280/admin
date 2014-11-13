package com.tmrasys.controller;

import javax.annotation.PostConstruct;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tmrasys.constant.page.PageResourceConstant;
import com.tmrasys.domain.Employee;
import com.tmrasys.service.employee.EmployeeService;

@Controller
@RequestMapping("/user")
public class UserController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private EmployeeService employeeService;

	@PostConstruct
	public void init() {
	}

	@RequestMapping("/add")
	public ModelAndView add(Employee employee) {
		Employee exist = employeeService.getEmployeeByName(employee.getName());
		ModelAndView view = new ModelAndView();
		if (null == exist) {
			employeeService.addEmployee(employee);
			view.addObject("newuser", employee);
		}
		view.setViewName(PageResourceConstant.USER_ADD_RESULT);
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

}
