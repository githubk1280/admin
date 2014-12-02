package com.tmrasys.service.employee;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmrasys.dao.EmployeeDao;
import com.tmrasys.dao.PrivilegeDao;
import com.tmrasys.domain.Employee;
import com.tmrasys.domain.Privilege;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDao employeeDao;
	@Autowired
	private PrivilegeDao privilegeDao;
	private Map<String, Integer> privileges = new HashMap<String, Integer>();

	@Override
	public Employee getEmployeeByName(String name) {
		return employeeDao.getEmployeeByName(name);
	}

	@Override
	public void addEmployee(Employee employee) {
		employeeDao.addEmployee(employee);
	}

	@Override
	public void updateEmployee(Employee employee) {
		employeeDao.updateEmployee(employee);
	}

	@Override
	public void updatePrivilege(Employee employee, String privilegeCode) {
		if (privileges.size() == 0) {
			for (Privilege privilege : privilegeDao.getAllPrivileges()) {
				privileges.put(privilege.getDescription(),
						privilege.getPrivilegeId());
			}
		}
		int privilegeId = privileges.get(privilegeCode);
		employee.setPrivilege(privilegeId);
		employeeDao.updateEmployee(employee);
	}

	@Override
	public List<Integer> getEmployeesByProjectId(int projectId) {
		return employeeDao.getEmployeesByProjectId(projectId);
	}

	@Override
	public List<Employee> getAllEmployees() {
		return employeeDao.getAllEmployees();
	}

	@Override
	public List<String> getEmployeesEmailByProjectId(int projectId,
			int operatorId) {
		return employeeDao.getEmployeesEmailByProjectId(projectId, operatorId);
	}

}
