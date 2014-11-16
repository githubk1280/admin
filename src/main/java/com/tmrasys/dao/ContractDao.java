package com.tmrasys.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tmrasys.domain.Contract;

@Repository
public interface ContractDao {
	List<Contract> getByEmployee(int employeeId);
	void addContract(Contract contract);
	void updateContract(Contract contract);
	Contract getById(int contractId);
}
