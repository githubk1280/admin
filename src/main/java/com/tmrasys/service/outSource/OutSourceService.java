package com.tmrasys.service.outSource;

import java.util.List;

import com.tmrasys.domain.OutSource;
import com.tmrasys.domain.ProjectOutSource;

public interface OutSourceService {
	List<OutSource> getOutSourceByProjectId(int projectId);
	void addOutSource(OutSource os);
	public List<ProjectOutSource> getByEmployee(int employeeId);
	public OutSource getById(int osId);
	void updateOutSource(OutSource outSource);
	int countByEmployee(int employeeId);
	List<ProjectOutSource> getPagedByEmployee(int employeeId, int page);
}
