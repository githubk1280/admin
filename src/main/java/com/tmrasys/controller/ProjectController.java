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
import com.tmrasys.service.project.ProjectService;

@Controller
@RequestMapping("/project")
public class ProjectController{
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
		view.setViewName(PageResourceConstant.PROJECT_DETAIL);
		return view;

	}

	@RequestMapping("/list")
	public ModelAndView loadAllProjectsByUser(HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		List<Project> projects = projectService.loadProjectsByEmployee(employee
				.getEmployeeId());
		ModelAndView view = new ModelAndView();
		view.addObject("projects", projects);
		view.setViewName(PageResourceConstant.PROJECT_LIST);
		return view;

	}
	
	@RequestMapping("/add")
	public ModelAndView add(Project project) {
		projectService.addProject(project);
		ModelAndView view = new ModelAndView();
		view.setViewName("redirect:list");
		return view;
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
