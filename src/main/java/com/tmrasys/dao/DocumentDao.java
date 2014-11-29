package com.tmrasys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.tmrasys.domain.Document;

@Repository
public interface DocumentDao {

	public int loadFolderByName(@Param(value = "name") String name,
			@Param(value = "parentId") int parentId);

	public void insertDocument(Document d);

	public List<Document> loadRootFoldersUnderUser(
			@Param(value = "name") String name,
			@Param(value = "parentId") int parentId);

}
