package com.tmrasys.dao;

import org.springframework.stereotype.Repository;

import com.tmrasys.domain.OutSource;

@Repository
public interface OutSourceDao {
	OutSource getByProjectId(int projectId);
	void addOutSource(OutSource os);
}
