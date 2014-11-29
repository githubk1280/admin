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
}
