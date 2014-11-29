package com.tmrasys.service.document;

import java.util.List;

import com.tmrasys.domain.Document;

public interface DocumentService {

	public abstract int loadRootFolderByUserName(String name);

	public abstract void insertDocument(Document d);

	public abstract List<Document> loadRootFoldersUnderUser(String name);

}