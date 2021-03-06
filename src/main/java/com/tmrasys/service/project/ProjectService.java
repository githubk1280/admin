package com.tmrasys.service.project;

import java.util.List;

import com.tmrasys.domain.Project;
import com.tmrasys.domain.ProjectIdPrincipal;

public interface ProjectService {
	Project loadProjectById(String projectId);

	List<Project> loadProjectsByEmployee(int userId);

	void updateProject(Project project);

	void addProject(Project project);

	int countProjectsByEmployee(int employeeId);

	List<ProjectIdPrincipal> loadProjectIdPrincipal(int userId);

	List<Project> loadProjectsPagination(int userId, int pageIndex);

	List<Project> findProjectByProjectName(String projectName, int employeeID);

	List<Project> loadAllProjects();

	boolean hasAccessAuth(int employeeId, String projectId);
	List<ProjectIdPrincipal> loadProjectCustomer(int userId);
	
	List<Project> loadCompletedProjectsPagination(int userId, int pageIndex);
	
	int countCompletedProjectsByEmployee(int employeeId);
	
	void addContent(String projectId, String content);
}
