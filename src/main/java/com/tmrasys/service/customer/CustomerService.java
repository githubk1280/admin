package com.tmrasys.service.customer;

import java.util.List;

import com.tmrasys.domain.Customer;

public interface CustomerService {
	List<Customer> getByProjectId(int projectId);
	void addCustomer(Customer customer);
	void updateCustomer(Customer customer);
	List<Customer> getByEmployee(int employeeId);
	public Customer getById(int customerId);
	int countByEmployee(int employeeId);
	List<Customer> getPagedByEmployee(int employeeId, int page);
}
