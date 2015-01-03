package com.tmrasys.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Document {
	private int fileId;
	private String fileName;
	private String filePath;
	private String fileOwner;
	private int fileOwnerId;
	private int fileType;
	private int parentId;
	private Date addTime;
	private int projectId;

	public Document(String fileName, String filePath, String fileOwner,
			int fileOwnerId, int fileType, int parentId, Date addTime,
			int projectId) {
		this.fileName = fileName;
		this.filePath = filePath;
		this.fileOwner = fileOwner;
		this.fileOwnerId = fileOwnerId;
		this.fileType = fileType;
		this.parentId = parentId;
		this.addTime = addTime;
		this.projectId = projectId;
	}

	public Document() {
	}

}
