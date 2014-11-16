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
}
