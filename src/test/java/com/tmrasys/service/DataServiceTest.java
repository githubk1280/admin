package com.tmrasys.service;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.tmrasys.base.AbstractBaseTestConfig;
import com.tmrasys.domain.ContactRecord;
import com.tmrasys.domain.Contract;
import com.tmrasys.domain.Customer;
import com.tmrasys.domain.Employee;
import com.tmrasys.domain.OutSource;
import com.tmrasys.domain.Project;
import com.tmrasys.domain.ProjectEmployee;
import com.tmrasys.domain.ProjectProgress;
import com.tmrasys.domain.Sample;
import com.tmrasys.service.contactRecord.ContactRecordService;
import com.tmrasys.service.contract.ContractService;
import com.tmrasys.service.customer.CustomerService;
import com.tmrasys.service.employee.EmployeeService;
import com.tmrasys.service.outSource.OutSourceService;
import com.tmrasys.service.project.ProjectService;
import com.tmrasys.service.projectEmployee.ProjectEmployeeService;
import com.tmrasys.service.projectProgress.ProjectProgressService;
import com.tmrasys.service.sample.SampleService;

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
	@Autowired
	ContractService contractService;
	@Autowired
	SampleService sampleService;
	@Autowired
	ContactRecordService contactRecordService;

	private Employee employee;

	@Test
	public void testLoadProjectById() {
		System.out.println(projectDataService.loadProjectById("74"));
	}

	@Test
	public void testgetEmployeeByName() {
		System.out.println(employeeDataService.getEmployeeByName("ivan"));
		System.out.println(employeeDataService.getEmployeeByName("terry"));
		System.out.println(employeeDataService.getEmployeeByName("james"));
		System.out.println(employeeDataService.getEmployeesByProjectId("29"));
	}

	@Test
	public void testaddEmployee() {
		Employee employee = new Employee();
		employee.setEmployeeRoleId(1);
		employee.setName("tony");
		employee.setPassword("123456");
		employee.setPrivilege(1);
		// employeeDataService.addEmployee(employee);
		employeeDataService.getEmployeesEmailByProjectId("52", 3);
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
		OutSource os = outSourceService.getOutSourceByProjectId(36).get(0);
		System.out.println(os);
		os.setContactInfo("AAAAAAAAAAAAAAAAAAAAAA");
		outSourceService.updateOutSource(os);
	}

	@Test
	public void testaddOutSource() {
		OutSource os = outSourceService.getOutSourceByProjectId(36).get(1);
		os.setProjectId("37");
		os.setOutSourceId(0);
		outSourceService.addOutSource(os);
	}

	@Test
	public void testgetCustomersByProjectId() {
		for (Customer customer : customerService.getByProjectId("74"))
			System.out.println(customer);
	}

	@Test
	public void testgetProjectProgressByProjectId() {
		for (ProjectProgress pp : projectProgressService.getByProjectId("15"))
			System.out.println(pp);
	}

	@Test
	public void testaddProjectProgressByProjectId() {
		ProjectProgress pp = new ProjectProgress();
		pp.setContent("test add");
		pp.setEmployeeId(1);
		pp.setProgressDate(new Date());
		pp.setProjectId("15");
		pp.setPercentage(0);
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
		pro.setProjectName("aaa");
		pro.setProjectNote("bbbb");
		pro.setResearchDirection("cccc");
		pro.setSampleCount(100);
		pro.setStartDate(new Date());
		projectDataService.addProject(pro);
	}

	@Test
	public void testupdateProject() {
		Project pro = projectDataService.loadProjectById("15");
		pro.setProjectName("pooo1");
		projectDataService.updateProject(pro);
	}

	@Test
	public void testaddReference() {
		ProjectEmployee projectEmployee = new ProjectEmployee("16", 1);
		projectEmployeeService.addReference(projectEmployee);
	}

	@Test
	public void testaddCustomer() {
		Customer customer = customerService.getByProjectId("15").get(0);
		customer.setCustomerName("gary");
		customer.setCustomerId(0);
		customerService.addCustomer(customer);
	}

	@Test
	public void testupdateCustomer() {
		Customer customer = customerService.getByProjectId("15").get(0);
		customer.setCustomerName("ivan");
		customer.setProjectId("16");
		customerService.updateCustomer(customer);
	}

	@Test
	public void testgetCustomersByEmployee() {
		for (Customer customer : customerService.getByEmployee(3))
			System.out.println(customer);
	}

	@Test
	public void testupdatePrivilege() {
		employee = employeeDataService.getEmployeeByName("ivan");
		employeeDataService.updatePrivilege(employee, "resear");
	}

	@Test
	public void testgetContractByEmployee() {
		employee = employeeDataService.getEmployeeByName("terry");
		List<Contract> list = contractService.getByEmployee(employee
				.getEmployeeId());
		for (Contract c : list)
			System.out.println(c);
		Contract contract = list.get(0);
		// contract.setContractId(0);
		// contractService.addContract(contract);
		contract.setSignPersonNameA("james");
		contractService.updateContract(contract);
	}

	@Test
	public void testCRUDsample() {
		for (Sample sample : sampleService.getByEmployee(2)) {
			System.out.println(sample);
		}
		Sample sample = sampleService.getById(1);
		sample.setProjectId("37");
		sampleService.addSample(sample);
	}
	
	@Test
	public void testcontactRecord() {
		ContactRecord record = new ContactRecord();
		record.setContactContent("111111111111111111111111");
		record.setContactPerson("222");
		record.setContactPhone("111111213123");
		record.setContactTime(new Date());
		record.setCustomerId(41);
		contactRecordService.addContact(record);
		System.out.println(contactRecordService.getByCustomerId(41).size());
	}
	
}
