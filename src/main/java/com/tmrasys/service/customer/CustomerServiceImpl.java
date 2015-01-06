package com.tmrasys.service.customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmrasys.dao.CustomerDao;
import com.tmrasys.dao.ProjectDao;
import com.tmrasys.domain.Customer;
import com.tmrasys.domain.ProjectCustomer;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDao customerDao;
	
	@Autowired
	private ProjectDao projectDao;

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
		if (pageIndex > 1) {
			start = (pageIndex - 1) * 10;
		}
		return customerDao.getPagedByEmployee(employeeId, start, end);
	}

	@Override
	public String getProjectName(String projectId) {

		return customerDao.getProjectName(projectId);
	}

	@Override
	public int countProjectPrincipal(String projectId) {

		return customerDao.countProjectPrincipal(projectId);
	}

	@Override
	public int countProjectFirst(String projectId) {

		return customerDao.countProjectFirst(projectId);
	}

	@Override
	public int countProjectSecond(String projectId) {

		return customerDao.countProjectSecond(projectId);
	}

	@Override
	public String getByEmployeeAndId(String id, int employeeId) {
		return customerDao.getByEmployeeAndId(id, employeeId);
	}

	@Override
	public List<ProjectCustomer> findProjectCustomerInfo(String projectName,
			int employeeId) {
		// TODO Auto-generated method stub
//		List<ProjectCustomer> pcList = customerDao.findProjectCustomerInfo(employeeId, projectName);
		List<ProjectCustomer> pcList = projectDao.findProjectCustomerInfo(employeeId, projectName);
		if(pcList!=null&&pcList.size()>0){
			for(int i=0;i<pcList.size();i++){
				Customer cust = customerDao.getByProjectIdForSearch(employeeId, pcList.get(i).getProjectId());
				pcList.get(i).setCustomerId(cust.getCustomerId());
				pcList.get(i).setCustomerName(cust.getCustomerName());
				pcList.get(i).setCustomerLevel(cust.getCustomerLevel());
				pcList.get(i).setWorkUnit(cust.getWorkUnit());
				pcList.get(i).setDepartment(cust.getDepartment());
				pcList.get(i).setPosition(cust.getPosition());
				pcList.get(i).setResarchDirection(cust.getResarchDirection());
				pcList.get(i).setResponsibleArea(cust.getResponsibleArea());
			}
		}
		return pcList;
	}

	@Override
	public String getCustomerName(int customerId) {
		// TODO Auto-generated method stub
		return customerDao.getCustomerName(customerId);
	}

}
