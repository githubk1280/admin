package com.tmrasys.service.projectEmployee;

import com.tmrasys.domain.ProjectEmployee;

public interface ProjectEmployeeService {
	void addReference(ProjectEmployee pe);
	ProjectEmployee getByProjectId(String projectId, int employeeId);
}
