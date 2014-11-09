package com.tmrasys.dao;

import org.springframework.stereotype.Repository;

import com.tmrasys.domain.Employee;

@Repository
public interface EmployeeDao {
	Employee getEmployeeByName(String name);
	void addEmployee(Employee employee);
	void updateEmployee(Employee employee);
}
