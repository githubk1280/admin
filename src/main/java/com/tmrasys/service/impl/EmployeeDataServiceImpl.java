package com.tmrasys.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmrasys.dao.EmployeeDao;
import com.tmrasys.domain.Employee;
import com.tmrasys.service.EmployeeDataService;

@Service
public class EmployeeDataServiceImpl implements EmployeeDataService {

	@Autowired
	private EmployeeDao employeeDao;
	
	@Override
	public Employee getEmployeeByName(String name) {
		return employeeDao.getEmployeeByName(name);
	}

}
