package com.tmrasys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.tmrasys.domain.Sample;

@Repository
public interface SampleDao {
	List<Sample> getByEmployee(int employeeId);
	void addSample(Sample sample);
	void updateSample(Sample sample);
	Sample getById(int sampleId);
	int countByEmployee(int employeeId);
	List<Sample> getPagedByEmployee(@Param(value = "employeeId") int employeeId,@Param(value = "start") int start,@Param(value = "end") int end);
}
