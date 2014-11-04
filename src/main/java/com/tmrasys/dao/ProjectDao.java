package com.tmrasys.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tmrasys.domain.Project;

@Repository
public interface ProjectDao {
	Project loadProjectById(int id);
	List<Project> loadProjectsByEmployee(int employeeId);
}
