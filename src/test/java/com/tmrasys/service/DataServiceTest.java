package com.tmrasys.service;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.tmrasys.base.AbstractBaseTestConfig;

public class DataServiceTest extends AbstractBaseTestConfig {

	@Autowired
	ProjectService projectDataService;
	@Autowired
//	EmployeeDataService employeeDataService;
//	private Employee employee;
	@Test
	public void testLoadProjectById() {
		System.out.println(projectDataService.loadProjectById(1));
		System.out.println(projectDataService.loadProjectById(2));
	}
	
	@Test
	public void testgetEmployeeByName() {
//		System.out.println(employeeDataService.getEmployeeByName("ivan"));
//		System.out.println(employeeDataService.getEmployeeByName("terry"));
//		System.out.println(employeeDataService.getEmployeeByName("james"));
	}
	
	@Test
	public void testgetProjectByEmployee() {
//		employee = employeeDataService.getEmployeeByName("terry");
//		System.out.println(projectDataService.loadProjectsByEmployee(employee).size());
	}

}
