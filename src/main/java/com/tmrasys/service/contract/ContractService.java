package com.tmrasys.service.contract;

import java.util.List;

import com.tmrasys.domain.Contract;

public interface ContractService {
	List<Contract> getByEmployee(int employeeId);
	void addContract(Contract contract);
	void updateContract(Contract contract);
}
