package com.tmrasys.service.customer;

import java.util.List;

import com.tmrasys.domain.Customer;
import com.tmrasys.domain.ProjectCustomer;

public interface CustomerService {
	List<Customer> getByProjectId(String projectId);

	void addCustomer(Customer customer);

	void updateCustomer(Customer customer);

	List<Customer> getByEmployee(int employeeId);

	public Customer getById(int customerId);

	int countByEmployee(int employeeId);

	List<Customer> getPagedByEmployee(int employeeId, int page);

	String getProjectName(String projectId);

	int countProjectPrincipal(String projectId);

	int countProjectFirst(String projectId);

	int countProjectSecond(String projectId);

	String getByEmployeeAndId(String id, int employeeId);
	
	List<ProjectCustomer> findProjectCustomerInfo(String projectName,int employeeId);
}
