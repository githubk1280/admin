package com.tmrasys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmrasys.dao.ProjectDao;
import com.tmrasys.domain.Employee;
import com.tmrasys.domain.Project;
import com.tmrasys.service.ProjectDataService;

@Service
public class ProjectDataServiceImpl implements ProjectDataService {
	@Autowired
	ProjectDao projectDao;

	public Project loadProjectById(int projectId) {
		return projectDao.loadProjectById(projectId);
	}

	@Override
	public List<Project> loadProjectsByEmployee(Employee employee) {
		return projectDao.loadProjectsByEmployee(employee.getPrivilege());
	}
}
