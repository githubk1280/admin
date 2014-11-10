package com.tmrasys.service.outSource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmrasys.dao.OutSourceDao;
import com.tmrasys.domain.OutSource;
import com.tmrasys.domain.ProjectOutSource;

@Service
public class OutSourceServiceImpl implements OutSourceService {

	@Autowired
	private OutSourceDao outSourceDao;
	
	@Override
	public OutSource getOutSourceByProjectId(int projectId) {
		return outSourceDao.getByProjectId(projectId);
	}

	@Override
	public void addOutSource(OutSource os) {
		outSourceDao.addOutSource(os);
	}

	@Override
	public List<ProjectOutSource> getByEmployee(int employeeId) {
		return outSourceDao.getByEmployee(employeeId);
	}

}
