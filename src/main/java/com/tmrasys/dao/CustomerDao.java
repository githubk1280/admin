package com.tmrasys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.tmrasys.domain.Customer;
import com.tmrasys.domain.ProjectCustomer;

@Repository
public interface CustomerDao {
	List<Customer> getByProjectId(String projectId);

	void addCustomer(Customer customer);

	void updateCustomer(Customer customer);

	List<Customer> getByEmployee(int employeeId);

	Customer getById(int customerId);

	int countByEmployee(int employeeId);

	List<Customer> getPagedByEmployee(
			@Param(value = "employeeId") int employeeId,
			@Param(value = "start") int start, @Param(value = "end") int end);

	String getProjectName(@Param(value = "projectId") String projectId);

	int countProjectPrincipal(String projectId);

	int countProjectFirst(String projectId);

	int countProjectSecond(String projectId);

	String getByEmployeeAndId(@Param(value = "customerId") String customerId,
			@Param(value = "employeeId") int employeeId);
	
	List<ProjectCustomer> findProjectCustomerInfo(@Param(value = "employeeId") int employeeId,@Param(value = "projectName")String projectName);
	Customer getByProjectIdForSearch(@Param(value = "employeeId") int employeeId,@Param(value = "projectId")String projectId);
}
