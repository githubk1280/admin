package com.tmrasys.service.customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmrasys.dao.CustomerDao;
import com.tmrasys.domain.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDao customerDao;

	@Override
	public List<Customer> getByProjectId(String projectId) {
		return customerDao.getByProjectId(projectId);
	}

	@Override
	public void addCustomer(Customer customer) {
		customerDao.addCustomer(customer);
	}

	@Override
	public void updateCustomer(Customer customer) {
		customerDao.updateCustomer(customer);
	}

	@Override
	public List<Customer> getByEmployee(int employeeId) {
		return customerDao.getByEmployee(employeeId);
	}

	@Override
	public Customer getById(int customerId) {
		return customerDao.getById(customerId);
	}

	@Override
	public int countByEmployee(int employeeId) {
		return customerDao.countByEmployee(employeeId);
	}

	@Override
	public List<Customer> getPagedByEmployee(int employeeId, int pageIndex) {
		int start = 0;
		int end = 10;
		if(pageIndex > 1) {
			start = (pageIndex - 1) * 10;
		}
		return customerDao.getPagedByEmployee(employeeId, start, end);
	}

}
