package com.tmrasys.service.project;

import java.util.List;

import com.tmrasys.domain.Employee;
import com.tmrasys.domain.Project;

public interface ProjectService {
	Project loadProjectById(int projectId);
	List<Project> loadProjectsByEmployee(Employee employee);
}
