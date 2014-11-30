package com.tmrasys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.tmrasys.domain.Document;

@Repository
public interface DocumentDao {

	public int loadFolderByName(@Param(value = "name") String name,
			@Param(value = "owner") String owner,
			@Param(value = "parentId") int parentId);

	public void insertDocument(Document d);

	public List<Document> loadRootFoldersUnderUser(
			@Param(value = "name") String name,
			@Param(value = "parentId") int parentId);

	public List<Document> loadFilesUnderByFolderId(
			@Param(value = "owner") String owner,
			@Param(value = "folderId") int folderId,
			@Param(value = "fileType") int fileType);

	public Document loadDocumentById(@Param(value = "id") int id);

	public Document loadFileByUserName(
			@Param(value = "userName") String userName,
			@Param(value = "fileName") String fileName);

	public void deleteFileById(@Param(value = "fileId") int fileId,
			@Param(value = "owner") String owner);

	public void deleteFileByParentId(@Param(value = "fileId") int fileId,
			@Param(value = "owner") String owner);
}
