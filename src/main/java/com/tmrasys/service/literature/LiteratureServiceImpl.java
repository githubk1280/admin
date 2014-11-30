package com.tmrasys.service.literature;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmrasys.dao.LiteratureDao;
import com.tmrasys.domain.Literature;

@Service
public class LiteratureServiceImpl implements LiteratureService {

	@Autowired
	private LiteratureDao literatureDao;

	@Override
	public List<Literature> loadAllLiteratures(int index, int defaultPageSize) {
		return literatureDao.loadAllLiteratures((index - 1) * defaultPageSize,
				defaultPageSize);
	}

	@Override
	public void insert(Literature lte) {
		literatureDao.insert(lte);
	}

	@Override
	public int getTotalCount() {
		return literatureDao.totalCount();
	}

}
