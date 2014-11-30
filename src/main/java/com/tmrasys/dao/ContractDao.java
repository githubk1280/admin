package com.tmrasys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.tmrasys.domain.Contract;

@Repository
public interface ContractDao {
	List<Contract> getByEmployee(int employeeId);
	void addContract(Contract contract);
	void updateContract(Contract contract);
	Contract getById(int contractId);
	List<Contract> getByProject(int projectId);
	int countByEmployee(int employeeId);
	List<Contract> getPagedByEmployee(@Param(value = "employeeId") int employeeId,@Param(value = "start") int start,@Param(value = "end") int end);
	List<Contract> findContractByProjectId(@Param(value="projectId")String projectId,@Param(value="employeeID")int employeeID);
}
