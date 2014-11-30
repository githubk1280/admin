package com.tmrasys.service.contract;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmrasys.dao.ContractDao;
import com.tmrasys.domain.Contract;

@Service
public class ContractServiceImpl implements ContractService {
	
	@Autowired
	private ContractDao contractDao;

	@Override
	public List<Contract> getByEmployee(int employeeId) {
		return contractDao.getByEmployee(employeeId);
	}

	@Override
	public void addContract(Contract contract) {
		contractDao.addContract(contract);
	}

	@Override
	public void updateContract(Contract contract) {
		contractDao.updateContract(contract);
	}

	@Override
	public Contract getById(int contractId) {
		return contractDao.getById(contractId);
	}

	@Override
	public List<Contract> getByProject(int projectId) {
		return contractDao.getByProject(projectId);
	}

	@Override
	public int countByEmployee(int employeeId) {
		return contractDao.countByEmployee(employeeId);
	}

	@Override
	public List<Contract> getPagedByEmployee(int employeeId, int pageIndex) {
		int start = 0;
		int end = 10;
		if(pageIndex > 1) {
			start = (pageIndex - 1) * 10;
		}
		return contractDao.getPagedByEmployee(employeeId, start, end);
	}
}
