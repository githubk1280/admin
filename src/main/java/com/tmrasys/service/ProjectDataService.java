package com.tmrasys.service;

import java.util.List;

import com.tmrasys.domain.Employee;
import com.tmrasys.domain.Project;

public interface ProjectDataService {
	Project loadProjectById(int projectId);
	List<Project> loadProjectsByEmployee(Employee employee);
}
