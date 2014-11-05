package com.tmrasys.service.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmrasys.dao.ProjectDao;
import com.tmrasys.domain.Project;

@Service
public class ProjectServiceImpl implements ProjectService {
	@Autowired
	private ProjectDao projectDao;

	@Override
	public Project loadProjectById(int projectId) {
		return projectDao.loadProjectById(1);
	}

	@Override
	public List<Project> loadProjectsByEmployee(int userId) {
		return projectDao.loadProjectsByEmployee(userId);
	}

}
