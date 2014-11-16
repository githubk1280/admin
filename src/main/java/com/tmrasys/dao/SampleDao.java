package com.tmrasys.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tmrasys.domain.Sample;

@Repository
public interface SampleDao {
	List<Sample> getByEmployee(int employeeId);
	void addSample(Sample sample);
	void updateSample(Sample sample);
	Sample getById(int sampleId);
}
