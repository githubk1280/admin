package com.tmrasys.service.document;

import java.io.File;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.tmrasys.base.AbstractBaseTestConfig;
import com.tmrasys.controller.DocumentController.FileTypeEnum;
import com.tmrasys.domain.Document;
import com.tmrasys.utils.FileUtils;
//@Ignore
public class DocumentServiceImplTest  extends AbstractBaseTestConfig {
	@Autowired
	DocumentService service;

	@Test
	public void testLoadRootFolderByName() {
		System.out.println(service.loadRootFolderCountByUserName("james","test"));
	}
	
	@Test
	public void loadFilesUnderByFolderId() {
		System.out.println(service.loadFilesUnderByFolderId("james", 3, FileTypeEnum.FILE.getType()));
	}

	@Test
	public void testInsertDocument() {
		Document d = new Document();
		d.setFileName("test");
		d.setFileOwner("james");
		d.setFilePath(FileUtils.getRootPath() + "james" + File.separator
				+ "test");
		d.setFileType(FileTypeEnum.FOLDER.getType());
		//root node
		d.setParentId(0);
		service.insertDocument(d);
	}

}
