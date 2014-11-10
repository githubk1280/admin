package com.tmrasys.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.tmrasys.domain.Customer;

@Repository
public interface CustomerDao {
	List<Customer> getByProjectId(int projectId);
	void addCustomer(Customer customer);
	void updateCustomer(Customer customer);
	List<Customer> getByEmployee(int employeeId);
}
