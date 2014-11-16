package com.tmrasys.service.sample;

import java.util.List;

import com.tmrasys.domain.Sample;

public interface SampleService {
	List<Sample> getByEmployee(int employeeId);
	void addSample(Sample sample);
	void updateSample(Sample sample);
	Sample getById(int sampleId);
}
