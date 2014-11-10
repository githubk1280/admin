package com.tmrasys.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tmrasys.domain.OutSource;
import com.tmrasys.domain.ProjectOutSource;

@Repository
public interface OutSourceDao {
	public OutSource getByProjectId(int projectId);
	public void addOutSource(OutSource os);
	public List<ProjectOutSource> getByEmployee(int employeeId);
	public OutSource getById(int osId);
}
