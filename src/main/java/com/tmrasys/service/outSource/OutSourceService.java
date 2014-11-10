package com.tmrasys.service.outSource;

import java.util.List;

import com.tmrasys.domain.OutSource;
import com.tmrasys.domain.ProjectOutSource;

public interface OutSourceService {
	OutSource getOutSourceByProjectId(int projectId);
	void addOutSource(OutSource os);
	public List<ProjectOutSource> getByEmployee(int employeeId);
}
