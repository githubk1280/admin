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
	public List<Customer> getByProjectId(int projectId) {
		return customerDao.getByProjectId(projectId);
	}

}
