package com.tmrasys.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tmrasys.domain.ProjectProgress;

@Repository
public interface ProjectProgressDao {
	List<ProjectProgress> getByProjectId(int projectId);
	void addProjectProgress(ProjectProgress projectProgress);
}
