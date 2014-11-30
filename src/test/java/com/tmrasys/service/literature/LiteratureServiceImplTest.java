package com.tmrasys.service.literature;

import java.util.Date;

import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.tmrasys.base.AbstractBaseTestConfig;
import com.tmrasys.domain.Literature;

public class LiteratureServiceImplTest extends AbstractBaseTestConfig {

	@Autowired
	private LiteratureService service;

	@Test
	public void testLoadAllLiteratures() {
		System.out.println(service.loadAllLiteratures(2, 10));
	}

	@Ignore
	@Test
	public void testInsert() {
		Literature lte = null;
		for (int i = 1; i < 26; i++) {
			lte = new Literature();
			lte.setTitle("测试title" + i);
			lte.setAuthor("作者" + i);
			lte.setPublishDate(new Date());
			lte.setLocation("出版地" + i);
			lte.setAbstracts("摘要xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx" + i);
			service.insert(lte);
			System.out.println(lte.getId());
		}
	}

	@Test
	public void testGetTotalCount() {
		System.out.println(service.getTotalCount());
	}

}
