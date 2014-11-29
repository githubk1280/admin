package com.tmrasys.service.document;

import java.util.List;

import com.tmrasys.domain.Document;

public interface DocumentService {

	public abstract int loadRootFolderCountByUserName(String owner, String name);

	public abstract void insertDocument(Document d);

	public abstract List<Document> loadRootFoldersUnderUser(String name);

	public abstract List<Document> loadFilesUnderByFolderId(String ownerName,
			int folderId, int type);

	public abstract Document loadDocumentById(int folderId);

	public abstract Document loadFileByUserName(String userName, String fileName);

}