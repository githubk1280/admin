package com.tmrasys.controller;

import java.util.List;

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
import com.tmrasys.domain.Project;
import com.tmrasys.domain.ProjectOutSource;
import com.tmrasys.service.outSource.OutSourceService;
import com.tmrasys.service.project.ProjectService;
import com.tmrasys.service.projectEmployee.ProjectEmployeeService;

@Controller
@RequestMapping("/outsource")
public class OutSourcingController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private ProjectService projectService;

	@Autowired
	private ProjectEmployeeService projectEmployeeService;

	@Autowired
	private OutSourceService outSourceService;

	@RequestMapping("/{osId}")
	public ModelAndView loadProjectById(@PathVariable int osId) {
		// Project project = projectService.loadProjectById(projectId);
		ModelAndView view = new ModelAndView();
		// view.addObject("project", project);
		view.setViewName(PageResourceConstant.PROJECT_DETAIL);
		return view;

	}

	@RequestMapping("/list")
	public ModelAndView loadAllProjectsByUser(HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		List<ProjectOutSource> outsources = outSourceService
				.getByEmployee(employee.getEmployeeId());
		ModelAndView view = new ModelAndView();
		view.addObject("outsources", outsources);
		view.setViewName(PageResourceConstant.OS_LIST);
		return view;

	}

	@RequestMapping("/add")
	public ModelAndView add(Project project, HttpSession session) {
		return new ModelAndView("redirect:list");
	}

	@RequestMapping("/add-redirect")
	public ModelAndView addRedirect() {
		Project project = new Project();
		ModelAndView view = new ModelAndView();
		view.addObject(project);
		view.setViewName(PageResourceConstant.PROJECT_ADD);
		return view;

	}

}
