package com.tmrasys.service.customer;

import java.util.List;

import com.tmrasys.domain.Customer;

public interface CustomerService {
	List<Customer> getByProjectId(int projectId);
}
