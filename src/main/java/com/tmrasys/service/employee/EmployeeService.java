package com.tmrasys.service.employee;

import java.util.List;

import com.tmrasys.domain.Employee;

public interface EmployeeService {
	Employee getEmployeeByName(String name);

	void addEmployee(Employee employee);

	void updateEmployee(Employee employee);

	void updatePrivilege(Employee employee, String privilegeCode);

	public List<Integer> getEmployeesByProjectId(String projectId);

	/** except operatorId
	 * @param projectId
	 * @param operatorId
	 * @return
	 */
	public List<String> getEmployeesEmailByProjectId(String projectId, int operatorId);

	List<Employee> getAllEmployees();
}
