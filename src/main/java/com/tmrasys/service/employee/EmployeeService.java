package com.tmrasys.service.employee;

import com.tmrasys.domain.Employee;

public interface EmployeeService {
	Employee getEmployeeByName(String name);
	void addEmployee(Employee employee);
	void updateEmployee(Employee employee);
}
