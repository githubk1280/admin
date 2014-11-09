package com.tmrasys.service;

import java.util.Date;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.tmrasys.base.AbstractBaseTestConfig;
import com.tmrasys.domain.Customer;
import com.tmrasys.domain.Employee;
import com.tmrasys.domain.OutSource;
import com.tmrasys.domain.Project;
import com.tmrasys.domain.ProjectEmployee;
import com.tmrasys.domain.ProjectProgress;
import com.tmrasys.service.customer.CustomerService;
import com.tmrasys.service.employee.EmployeeService;
import com.tmrasys.service.outSource.OutSourceService;
import com.tmrasys.service.project.ProjectService;
import com.tmrasys.service.projectEmployee.ProjectEmployeeService;
import com.tmrasys.service.projectProgress.ProjectProgressService;

public class DataServiceTest extends AbstractBaseTestConfig {

	@Autowired
	ProjectService projectDataService;
	@Autowired
	EmployeeService employeeDataService;
	@Autowired
	OutSourceService outSourceService;
	@Autowired
	CustomerService customerService;
	@Autowired
	ProjectProgressService projectProgressService;
	@Autowired
	ProjectEmployeeService projectEmployeeService;
	
	private Employee employee;

	@Test
	public void testLoadProjectById() {
		System.out.println(projectDataService.loadProjectById(1));
		System.out.println(projectDataService.loadProjectById(2));
	}

	@Test
	public void testgetEmployeeByName() {
		System.out.println(employeeDataService.getEmployeeByName("ivan"));
		System.out.println(employeeDataService.getEmployeeByName("terry"));
		System.out.println(employeeDataService.getEmployeeByName("james"));
	}
	
	@Test
	public void testaddEmployee() {
		Employee employee = new Employee();
		employee.setEmployeeRoleId(1);
		employee.setName("tony");
		employee.setPassword("123456");
		employee.setPrivilege(1);
		employeeDataService.addEmployee(employee);
	}
	
	@Test
	public void testupdateEmployee() {
		employee = employeeDataService.getEmployeeByName("Robin");
		employee.setName("robin");
		employeeDataService.updateEmployee(employee);
	}

	@Test
	public void testgetProjectByEmployee() {
		employee = employeeDataService.getEmployeeByName("terry");
		System.out.println(projectDataService.loadProjectsByEmployee(
				employee.getEmployeeId()).size());
	}
	
	@Test
	public void testgetOutSourceByProjectId() {
		OutSource os = outSourceService.getOutSourceByProjectId(2);
		System.out.println(os);
	}
	
	@Test
	public void testaddOutSource() {
		OutSource os = outSourceService.getOutSourceByProjectId(17);
		os.setProjectId(15);
		os.setOutSourceId(0);
		outSourceService.addOutSource(os);
	}
	
	@Test
	public void testgetCustomersByProjectId() {
		for(Customer customer : customerService.getByProjectId(1))
			System.out.println(customer);
	}

	@Test
	public void testgetProjectProgressByProjectId() {
		for(ProjectProgress pp : projectProgressService.getByProjectId(1))
			System.out.println(pp);
	}
	
	@Test
	public void testaddProjectProgressByProjectId() {
		ProjectProgress pp = new ProjectProgress();
		pp.setContent("test add");
		pp.setEmployeeName("ivan");
		pp.setProgressDate(new Date());
		pp.setProjectId(1);
		projectProgressService.addProjectProgress(pp);
	}
	
	@Test
	public void testaddProject() {
		Project pro = new Project();
		pro.setEndDate(new Date());
		pro.setHasCorporatedIntention('Y');
		pro.setNeedPrincipalAssist('N');
		pro.setNeedProjectPlan('Y');
		pro.setNeedSCI('Y');
		pro.setPlatformDemand("plat form A");
		pro.setPotentialExpenditure("test test etc");
		pro.setPriority(1);
		pro.setProjectContent("what a perfect project");
		pro.setProjectName("一个老中医");
		pro.setProjectNote("一个老中医  专治吹牛X");
		pro.setResearchDirection("专治各种");
		pro.setSampleCount(100);
		pro.setStartDate(new Date());
		projectDataService.addProject(pro);
	}
	
	@Test
	public void testupdateProject() {
		Project pro = projectDataService.loadProjectById(5);
		pro.setProjectName("生物项目1");
		projectDataService.updateProject(pro);
	}
	
	@Test
	public void testaddReference() {
		ProjectEmployee projectEmployee = new ProjectEmployee(1,1);
		projectEmployeeService.addReference(projectEmployee);
	}
	
}
