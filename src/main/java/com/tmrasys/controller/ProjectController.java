package com.tmrasys.controller;

import javax.annotation.PostConstruct;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tmrasys.domain.Project;
import com.tmrasys.service.project.ProjectService;

@Controller
@RequestMapping("/project")
public class ProjectController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	ProjectService projectService;

	@PostConstruct
	public void init() {
	}

	@RequestMapping("/{projectId}")
	public ModelAndView loadProjectById(@PathVariable int projectId) {
		Project project = projectService.loadProjectById(projectId);
		ModelAndView view = new ModelAndView();
		view.addObject("project", project);
		view.setViewName("detail");
		return view;

	}

	@RequestMapping("/list")
	public ModelAndView loadAllProjects() {
		Project project = projectService.loadProjectsByEmployee(employeeId);
		ModelAndView view = new ModelAndView();
		view.addObject("project", project);
		view.setViewName("detail");
		return view;

	}

}
