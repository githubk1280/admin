package com.tmrasys.controller;

import java.io.IOException;
import java.util.Date;
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
import com.tmrasys.domain.ProjectEmployee;
import com.tmrasys.domain.ProjectProgress;
import com.tmrasys.service.project.ProjectService;
import com.tmrasys.service.projectEmployee.ProjectEmployeeService;
import com.tmrasys.service.projectProgress.ProjectProgressService;

@Controller
@RequestMapping("/project")
public class ProjectController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private ProjectService projectService;

	@Autowired
	private ProjectEmployeeService projectEmployeeService;

	@Autowired
	private ProjectProgressService projectProgressService;

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
	

	@RequestMapping("/pages/{page}")
	public ModelAndView loadProjectByPage(@PathVariable int page, HttpSession session){
		Employee employee = (Employee) session.getAttribute("user");
		int count = projectService.countProjectsByEmployee(employee.getEmployeeId());
		List<Project> projectsReturn = projectService.loadProjectsPagination(employee.getEmployeeId(), page);
		ModelAndView view = new ModelAndView();
		int pages = 1;
		if(count > 10) {
			pages = (count + 9) / 10;
		}
		view.addObject("projects", projectsReturn);
		view.addObject("pages", pages);
		view.setViewName(PageResourceConstant.PROJECT_LIST);
		return view;

	}


	@RequestMapping("/list")
	public ModelAndView loadAllProjectsByUser(HttpSession session){
		Employee employee = (Employee) session.getAttribute("user");
		List<Project> projects = projectService.loadProjectsByEmployee(employee
				.getEmployeeId());
		ModelAndView view = new ModelAndView();
		int pages = 1;
		view.addObject("projects", projects);
		view.addObject("pages", pages);
		view.setViewName(PageResourceConstant.PROJECT_LIST);
		return view;

	}

	@RequestMapping("/add")
	public ModelAndView add(Project project, HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		int employeeId = employee.getEmployeeId();
		projectService.addProject(project);
		int projectId = project.getProjectId();
		projectEmployeeService.addReference(new ProjectEmployee(projectId,
				employeeId));
		projectProgressService.addProjectProgress(new ProjectProgress(employee
				.getEmployeeId(), employee.getName(), "项目创建", new Date(),
				projectId, 0));
		return new ModelAndView("redirect:list");
	}
	
	@RequestMapping("/search")
	public ModelAndView search(String searchStr,HttpSession session){
		Employee employee = (Employee) session.getAttribute("user");
		List<Project> projects = projectService.findProjectByProjectName(searchStr,employee.getEmployeeId());
		ModelAndView view = new ModelAndView();
		view.addObject("projects",projects);
		view.setViewName(PageResourceConstant.PROJECT_LIST);
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
	
	@RequestMapping("/update")
	public ModelAndView addRedirect(Project project) {
		projectService.updateProject(project);
		ModelAndView view = new ModelAndView();
		view.addObject(project);
		view.setViewName(PageResourceConstant.PROJECT_DETAIL);
		return view;

	}
	
	
	
}
