package com.tmrasys.service.contract;

import java.util.List;

import com.tmrasys.domain.Contract;

public interface ContractService {
	List<Contract> getByEmployee(int employeeId);
	List<Contract> getPagedByEmployee(int employeeId, int page);
	void addContract(Contract contract);
	void updateContract(Contract contract);
	Contract getById(int contractId);
	List<Contract> getByProject(int projectId);
	int countByEmployee(int employeeId);
}
