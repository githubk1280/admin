package com.tmrasys.service.document;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmrasys.controller.DocumentController.FileTypeEnum;
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
	public int loadRootFolderCountByUserName(String owner, String name) {
		return documentDao.loadFolderByName(name, owner, 0);
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
		return documentDao.loadRootFoldersUnderUser(name, 0);
	}

	@Override
	public List<Document> loadFilesUnderUserByType(String ownerName,
			int folderId, int type) {
		return documentDao.loadFilesUnderUserByType(ownerName, folderId, type);
	}

	@Override
	public Document loadDocumentById(int folderId) {
		return documentDao.loadDocumentById(folderId);
	}

	@Override
	public Document loadFileByUserName(String userName, String fileName) {
		return documentDao.loadFileByUserName(userName, fileName);
	}

	@Override
	public void deleteFolderById(int fileId, int fileType, String owner) {
		documentDao.deleteFileById(fileId, owner);
		if (fileType == FileTypeEnum.FOLDER.getType())
			documentDao.deleteFileByParentId(fileId, owner);
	}

	@Override
	public List<Document> loadFilesByType(int folderId, int fileType) {
		return documentDao.loadFilesByType(folderId, fileType);
	}

}
