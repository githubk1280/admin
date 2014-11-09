package com.tmrasys.dao;

import org.springframework.stereotype.Repository;
import com.tmrasys.domain.ProjectEmployee;

@Repository
public interface ProjectEmployeeDao {
	void addReference(ProjectEmployee pe);
}
