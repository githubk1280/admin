package com.tmrasys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.tmrasys.domain.Project;

@Repository
public interface ProjectDao {
	Project loadProjectById(String id);

	List<Project> loadProjectsByEmployee(int employeeId);

	void updateProject(Project project);

	void addProject(Project project);

	int countProjectsByEmployee(int employeeId);

	List<Project> loadProjectsPagination(
			@Param(value = "employeeId") int employeeId,
			@Param(value = "start") int start, @Param(value = "end") int end);

	List<Project> findProjectByProjectName(
			@Param(value = "projectName") String projectName,
			@Param(value = "employeeID") int employeeID);

	List<Project> loadAllProjects();

	Project loadProjectsByEmployeeAndId(
			@Param(value = "employeeId") int employeeId, 
			@Param(value = "projectId")String projectId);
	List<Project> loadProjectCustomer(int employeeId);
}
