package com.tmrasys.controller;

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

import com.tmrasys.constant.DataCheckTypeConstant;
import com.tmrasys.constant.RoleConstant;
import com.tmrasys.constant.page.PageResourceConstant;
import com.tmrasys.domain.Employee;
import com.tmrasys.domain.Project;
import com.tmrasys.domain.ProjectEmployee;
import com.tmrasys.domain.ProjectProgress;
import com.tmrasys.service.employee.EmployeeService;
import com.tmrasys.service.project.ProjectService;
import com.tmrasys.service.projectEmployee.ProjectEmployeeService;
import com.tmrasys.service.projectProgress.ProjectProgressService;
import com.tmrasys.stereotype.DataAccessCheck;
import com.tmrasys.stereotype.Priviliege;

@Controller
@RequestMapping("/project")
@Priviliege(allow = { RoleConstant.MANAGER })
public class ProjectController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private ProjectService projectService;

	@Autowired
	private ProjectEmployeeService projectEmployeeService;

	@Autowired
	private ProjectProgressService projectProgressService;

	@Autowired
	private EmployeeService employeeService;

	@PostConstruct
	public void init() {
	}

	@DataAccessCheck(forWhat = { DataCheckTypeConstant.PROJECT })
	@RequestMapping("/{projectId}")
	public ModelAndView loadProjectById(@PathVariable String projectId) {
		Project project = projectService.loadProjectById(projectId);
		ModelAndView view = new ModelAndView();
		view.addObject("project", project);
		view.setViewName(PageResourceConstant.PROJECT_DETAIL);
		return view;

	}

	@RequestMapping("/pages/{page}")
	public ModelAndView loadProjectByPage(@PathVariable int page,
			HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		int count = projectService.countProjectsByEmployee(employee
				.getEmployeeId());
		List<Project> projectsReturn = projectService.loadProjectsPagination(
				employee.getEmployeeId(), page);
		ModelAndView view = new ModelAndView();
		int pages = 1;
		if (count > 10) {
			pages = (count + 9) / 10;
		}
		view.addObject("projects", projectsReturn);
		view.addObject("pages", pages);
		view.setViewName(PageResourceConstant.PROJECT_LIST);
		return view;

	}

	@RequestMapping("/list")
	public ModelAndView loadAllProjectsByUser(HttpSession session) {
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
		String projectId = project.getProjectId();
		projectEmployeeService.addReference(new ProjectEmployee(projectId,
				employeeId));
		projectProgressService.addProjectProgress(new ProjectProgress(employee
				.getEmployeeId(), employee.getName(), "项目创建", new Date(),
				projectId, 0));
		return new ModelAndView("redirect:pages/1");
	}

	@RequestMapping("/search")
	public ModelAndView search(String searchStr, HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		List<Project> projects = projectService.findProjectByProjectName(
				searchStr, employee.getEmployeeId());
		ModelAndView view = new ModelAndView();
		view.addObject("projects", projects);
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

	@RequestMapping("/assign-redirect")
	public ModelAndView assignRedirect() {
		ProjectEmployee projectEmployee = new ProjectEmployee("", 0);
		List<Employee> emps = employeeService.getAllEmployees();
		List<Project> pros = projectService.loadAllProjects();
		ModelAndView view = new ModelAndView();
		view.addObject("projects", pros);
		view.addObject("employees", emps);
		view.addObject("projectEmployee", projectEmployee);
		view.setViewName("project/assignProjects");
		return view;

	}

	@RequestMapping("/assign")
	public ModelAndView assign(ProjectEmployee projectEmployee,
			HttpSession session) {
		boolean exist = projectEmployeeService
				.getByProjectId(projectEmployee.getProjectId(),
						projectEmployee.getEmployeeId()) != null;
		int success = 1;
		if (exist) {
			success = 2;
		} else {
			projectEmployeeService.addReference(projectEmployee);
		}
		ModelAndView view = new ModelAndView();
		view.addObject("success", success);
		return new ModelAndView("project/assign-success");
	}

}
