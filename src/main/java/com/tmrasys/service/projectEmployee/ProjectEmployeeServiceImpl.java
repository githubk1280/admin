package com.tmrasys.service.projectEmployee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmrasys.dao.ProjectEmployeeDao;
import com.tmrasys.domain.ProjectEmployee;

@Service
public class ProjectEmployeeServiceImpl implements ProjectEmployeeService {

	@Autowired
	private ProjectEmployeeDao projectEmployeeDao;

	@Override
	public void addReference(ProjectEmployee pe) {
		projectEmployeeDao.addReference(pe);
	}

	@Override
	public ProjectEmployee getByProjectId(String projectId, int employeeId) {
		return projectEmployeeDao.getByProjectId(projectId, employeeId);
	}

}
