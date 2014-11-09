package com.tmrasys.service.projectProgress;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmrasys.dao.ProjectProgressDao;
import com.tmrasys.domain.ProjectProgress;

@Service
public class ProjectProgressServiceImpl implements ProjectProgressService {
	@Autowired
	private ProjectProgressDao projectProgressDao;

	@Override
	public List<ProjectProgress> getByProjectId(int projectId) {
		return projectProgressDao.getByProjectId(projectId);
	}

	@Override
	public void addProjectProgress(ProjectProgress projectProgress) {
		projectProgressDao.addProjectProgress(projectProgress);
	}

}
