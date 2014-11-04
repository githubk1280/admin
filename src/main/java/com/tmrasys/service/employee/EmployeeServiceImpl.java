package com.tmrasys.service.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmrasys.dao.EmployeeDao;
import com.tmrasys.domain.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDao employeeDao;
	
	@Override
	public Employee getEmployeeByName(String name) {
		return employeeDao.getEmployeeByName(name);
	}

}
