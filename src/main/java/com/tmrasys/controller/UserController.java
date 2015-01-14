package com.tmrasys.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tmrasys.constant.page.PageResourceConstant;
import com.tmrasys.domain.Employee;
import com.tmrasys.domain.Project;
import com.tmrasys.domain.ProjectEmployee;
import com.tmrasys.service.employee.EmployeeService;
import com.tmrasys.service.project.ProjectService;
import com.tmrasys.service.projectEmployee.ProjectEmployeeService;
import com.tmrasys.utils.FailedUtils;

@Controller
@RequestMapping("/user")
public class UserController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private EmployeeService employeeService;

	@Autowired
	private ProjectService projectService;
	
	@Autowired
	private ProjectEmployeeService projectEmployeeService;
	
	private final Map<Integer, Integer> role_privilege = new HashMap<Integer, Integer>();

	@PostConstruct
	public void init() {
		role_privilege.put(1, 2);
		role_privilege.put(2, 1);
		role_privilege.put(3, 3);
		role_privilege.put(4, 4);
	}

	@RequestMapping("/add")
	public ModelAndView add(Employee employee) {
		Employee exist = employeeService.getEmployeeByName(employee.getName());
		ModelAndView view = new ModelAndView();
		if (null == exist) {
			employee.setPrivilege(role_privilege.get(employee.getEmployeeRoleId()));
			employeeService.addEmployee(employee);
			view.addObject("newuser", employee);
		} else {
			view.setViewName("redirect:"
					+ FailedUtils.getLoginErrorMessage("failed"));
			return view;
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

	@RequestMapping("/assign-redirect")
	public ModelAndView assignRedirect() {
		ProjectEmployee projectEmployee = new ProjectEmployee("", 0);
		List<Employee> emps = employeeService.getAllEmployees();
		List<Project> pros = projectService.loadAllProjects();
		ModelAndView view = new ModelAndView();
		view.addObject("projects", pros);
		view.addObject("employees", emps);
		view.addObject("projectEmployee", projectEmployee);
		view.setViewName("usermgnt/assignProjects");
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
			projectService.addContent(projectEmployee.getProjectId(),
					projectEmployee.getAssignContent());
		}
		ModelAndView view = new ModelAndView("usermgnt/assign-success");
		view.addObject("success", success);
		return view;
	}

}
