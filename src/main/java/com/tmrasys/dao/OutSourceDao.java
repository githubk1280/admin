package com.tmrasys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.tmrasys.domain.OutSource;
import com.tmrasys.domain.ProjectOutSource;

@Repository
public interface OutSourceDao {
	public List<OutSource> getByProjectId(int projectId);
	public void addOutSource(OutSource os);
	public List<ProjectOutSource> getByEmployee(int employeeId);
	public OutSource getById(int osId);
	void updateOutSource(OutSource outSource);
	int countByEmployee(int employeeId);
	List<ProjectOutSource> getPagedByEmployee(@Param(value = "employeeId") int employeeId,@Param(value = "start") int start,@Param(value = "end") int end);
	List<ProjectOutSource> getByProjectName(@Param(value = "projectName")String projectName,@Param(value = "employeeId")int employeeId);
}
