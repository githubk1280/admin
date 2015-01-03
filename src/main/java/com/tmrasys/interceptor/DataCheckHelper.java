package com.tmrasys.interceptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.tmrasys.constant.DataCheckTypeConstant;
import com.tmrasys.service.contract.ContractService;
import com.tmrasys.service.project.ProjectService;
import com.tmrasys.service.sample.SampleService;

@Component
public class DataCheckHelper {
	@Autowired
	private ProjectService projectService;

	@Autowired
	private SampleService sampleService;

	@Autowired
	private ContractService contractService;

	public boolean hasAccess(String id, String name, int employeeId) {
		if (DataCheckTypeConstant.PROJECT.equals(name)) {
			return checkProject(id, employeeId);
		} else if (DataCheckTypeConstant.SAMPLE.equals(name)) {
			return checkSample(id, employeeId);
		} else if (DataCheckTypeConstant.CONTRACT.equals(name)) {
			return checkContract(id, employeeId);
		}
		return true;
	}

	private boolean checkContract(String id, int employeeId) {
		return contractService.getByEmployeeAndId(employeeId, id) == null ? false
				: true;
	}

	private boolean checkSample(String id, int employeeId) {
		return sampleService.getByEmployeeAndId(employeeId, id) == null ? false
				: true;
	}

	private boolean checkProject(String projectId, int employeeId) {
		return projectService.hasAccessAuth(employeeId, projectId);

	}
}
