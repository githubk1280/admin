package com.tmrasys.service.document;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmrasys.dao.DocumentDao;
import com.tmrasys.domain.Document;

@Service
public class DocumentServiceImpl implements DocumentService {

	@Autowired
	private DocumentDao documentDao;

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.tmrasys.service.document.DocumentService1#loadRootFolderByName(java
	 * .lang.String)
	 */
	@Override
	public int loadRootFolderByUserName(String name) {
		return documentDao.loadFolderByName(name, 0);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.tmrasys.service.document.DocumentService1#insertDocument(com.tmrasys
	 * .domain.Document)
	 */
	@Override
	public void insertDocument(Document d) {
		documentDao.insertDocument(d);
	}

	@Override
	public List<Document> loadRootFoldersUnderUser(String name) {
		return documentDao.loadRootFoldersUnderUser(name,0);
	}

}
