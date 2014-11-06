package com.tmrasys.service.outSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmrasys.dao.OutSourceDao;
import com.tmrasys.domain.OutSource;

@Service
public class OutSourceServiceImpl implements OutSourceService {

	@Autowired
	private OutSourceDao outSourceDao;
	
	@Override
	public OutSource getOutSourceByProjectId(int projectId) {
		return outSourceDao.getByProjectId(projectId);
	}

}
