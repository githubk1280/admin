package com.tmrasys.service;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.tmrasys.base.AbstractBaseTestConfig;
import com.tmrasys.domain.Customer;
import com.tmrasys.domain.Employee;
import com.tmrasys.domain.OutSource;
import com.tmrasys.domain.ProjectProgress;
import com.tmrasys.service.customer.CustomerService;
import com.tmrasys.service.employee.EmployeeService;
import com.tmrasys.service.outSource.OutSourceService;
import com.tmrasys.service.project.ProjectService;
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
	public void testgetCustomersByProjectId() {
		for(Customer customer : customerService.getByProjectId(1))
			System.out.println(customer);
	}

	@Test
	public void testgetProjectProgressByProjectId() {
		for(ProjectProgress pp : projectProgressService.getByProjectId(1))
			System.out.println(pp);
	}
}
