package com.tmrasys.service.projectProgress;

import java.util.List;

import com.tmrasys.domain.ProjectProgress;

public interface ProjectProgressService {
	List<ProjectProgress> getByProjectId(int projectId);
}
