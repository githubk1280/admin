package com.tmrasys.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Literature {
	private int id;
	private String title;
	private String author;
	/**
	 * 发布时间
	 */
	private Date publishDate;
	private String location;
	/**
	 * 摘要
	 */
	private String abstracts;
	/**
	 * 上传文件存储路径
	 */
	private String filePath;
}
