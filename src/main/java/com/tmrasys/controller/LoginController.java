package com.tmrasys.controller;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tmrasys.service.project.ProjectService;

@Controller
public class LoginController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	ProjectService projectService;

	@PostConstruct
	public void init() {
	}

	@RequestMapping("/login")
	public ModelAndView login(String userName, String password,
			HttpServletRequest request, HttpServletResponse response) {
		ModelAndView view = new ModelAndView();
		view.setViewName("redirect:/project/list");
		return view;
	}

}
