package com.tmrasys.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.tmrasys.domain.ProjectEmployee;

@Repository
public interface ProjectEmployeeDao {
	void addReference(ProjectEmployee pe);
	ProjectEmployee getByProjectId(@Param(value = "projectId") String projectId, @Param(value = "employeeId") int employeeId);
}
