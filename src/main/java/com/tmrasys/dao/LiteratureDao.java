package com.tmrasys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.tmrasys.domain.Literature;

@Repository
public interface LiteratureDao {

	List<Literature> loadAllLiteratures(@Param(value = "start") int start,
			@Param(value = "offset") int offset);

	void insert(Literature lte);

	int totalCount();

	Literature loadById(int id);

	void update(Literature literature);

}
