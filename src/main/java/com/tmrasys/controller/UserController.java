package com.tmrasys.controller;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
		if(null == exist){
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
	
	@RequestMapping("/modify-redirect")
	public ModelAndView modifyRedirect() {
		ModelAndView view = new ModelAndView();
		Employee modifyUser = new Employee();
		view.addObject("modifyUser", modifyUser);
		view.setViewName(PageResourceConstant.USER_MODIFY);
		return view;
	}
	
	@RequestMapping("/update")
	public ModelAndView update(Employee modifyUser, HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		employee.setPassword(modifyUser.getPassword());
		ModelAndView view = new ModelAndView();
		employeeService.updateEmployee(employee);
		view.setViewName(PageResourceConstant.USER_MODIFY_SUCCESS);
		return view;
	}

}
