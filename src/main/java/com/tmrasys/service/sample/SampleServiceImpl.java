package com.tmrasys.service.sample;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmrasys.dao.SampleDao;
import com.tmrasys.domain.Sample;


@Service
public class SampleServiceImpl implements SampleService {

	@Autowired
	private SampleDao sampleDao;
	@Override
	public List<Sample> getByEmployee(int employeeId) {
		return sampleDao.getByEmployee(employeeId);
	}

	@Override
	public void addSample(Sample sample) {
		sampleDao.addSample(sample);
	}

	@Override
	public void updateSample(Sample sample) {
		sampleDao.updateSample(sample);
	}

	@Override
	public Sample getById(int sampleId) {
		return sampleDao.getById(sampleId);
	}

}