package com.tmrasys.controller;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tmrasys.domain.Employee;
import com.tmrasys.service.employee.EmployeeService;
import com.tmrasys.utils.FailedUtils;

@Controller
public class LoginController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	EmployeeService employeeService;

	@RequestMapping("/login")
	public ModelAndView login(String userName, String password,
			HttpSession session) {
		Employee user = employeeService.getEmployeeByName(userName);
		ModelAndView view = new ModelAndView();
		if (null == user) {
			view.setViewName("redirect:"
					+ FailedUtils.getLoginErrorMessage("用户不存在"));
			return view;
		} else if (password == null || !password.equals(user.getPassword())) {
			view.setViewName("redirect:"
					+ FailedUtils.getLoginErrorMessage("请输入正确的密码"));
			return view;
		}
		session.setAttribute("user", user);
		view.setViewName("redirect:/project/list");
		return view;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		ModelAndView view = new ModelAndView();
		session.removeAttribute("user");
		view.setViewName("redirect:/");
		return view;
	}

}
