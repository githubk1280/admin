package com.tmrasys.service.project;

import java.util.List;

import com.tmrasys.domain.Project;
import com.tmrasys.domain.ProjectIdPrincipal;

public interface ProjectService {
	Project loadProjectById(int projectId);
	List<Project> loadProjectsByEmployee(int userId);
	void updateProject(Project project);
	void addProject(Project project);
	List<ProjectIdPrincipal> loadProjectIdPrincipal(int userId);
}
