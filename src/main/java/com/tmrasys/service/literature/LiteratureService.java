package com.tmrasys.service.literature;

import java.util.List;

import com.tmrasys.domain.Literature;

public interface LiteratureService {

	public List<Literature> loadAllLiteratures(int index, int defaultPageSize);

	public void insert(Literature lte);

	public int getTotalCount();

	public Literature loadById(int id);

}
