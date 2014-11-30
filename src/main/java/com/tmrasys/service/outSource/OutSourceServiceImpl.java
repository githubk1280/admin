package com.tmrasys.service.outSource;

import java.util.ArrayList;
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
	public List<OutSource> getOutSourceByProjectId(int projectId) {
		List<OutSource> list = new ArrayList<OutSource>();
		OutSource exOS = new OutSource(), dataOS = new OutSource();
		for(OutSource os : outSourceDao.getByProjectId(projectId)) {
			if("实验外包".equals(os.getOutSourceType()))
				exOS = os;
			else
				dataOS = os;
		}
		list.add(exOS);
		list.add(dataOS);
		return list;
	}

	@Override
	public void addOutSource(OutSource os) {
		outSourceDao.addOutSource(os);
	}

	@Override
	public List<ProjectOutSource> getByEmployee(int employeeId) {
		return outSourceDao.getByEmployee(employeeId);
	}

	@Override
	public OutSource getById(int osId) {
		return outSourceDao.getById(osId);
	}

	@Override
	public void updateOutSource(OutSource outSource) {
		outSourceDao.updateOutSource(outSource);
	}

	@Override
	public int countByEmployee(int employeeId) {
		return outSourceDao.countByEmployee(employeeId);
	}

	@Override
	public List<ProjectOutSource> getPagedByEmployee(int employeeId, int pageIndex) {
		int start = 0;
		int end = 10;
		if(pageIndex > 1) {
			start = (pageIndex - 1) * 10;
		}
		return outSourceDao.getPagedByEmployee(employeeId, start, end);
	}

}

