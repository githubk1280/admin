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

	private String direction;

	private String background;

	/**
	 * 技术路线
	 */
	private String technicalWay;

	private String technicalPlatform;

	private String conclusion;

	/**
	 * 亮点
	 */
	private String lightPoint;

	/**
	 * 对科研项目的启示
	 */
	private String researchEnlightenment;

	/**
	 * 对产品研发的启示
	 */
	private String productEnlightenment;

	/**
	 * 对技术平台建设的启示
	 */
	private String platformEnlightenment;

	/**
	 * 备注
	 */
	private String comments;

	/**
	 * 相关问题与解答
	 */
	private String problem;

	/**
	 * 附件研究热点
	 */
	private String attachedHotSpot;

	public Literature(String title, String author, Date publishDate,
			String location, String abstracts, String filePath,
			String direction, String background, String technicalWay,
			String technicalPlatform, String conclusion, String lightPoint,
			String researchEnlightenment, String productEnlightenment,
			String platformEnlightenment, String comments, String problem,
			String attachedHotSpot) {
		this.title = title;
		this.author = author;
		this.publishDate = publishDate;
		this.location = location;
		this.abstracts = abstracts;
		this.filePath = filePath;
		this.direction = direction;
		this.background = background;
		this.technicalWay = technicalWay;
		this.technicalPlatform = technicalPlatform;
		this.conclusion = conclusion;
		this.lightPoint = lightPoint;
		this.researchEnlightenment = researchEnlightenment;
		this.productEnlightenment = productEnlightenment;
		this.platformEnlightenment = platformEnlightenment;
		this.comments = comments;
		this.problem = problem;
		this.attachedHotSpot = attachedHotSpot;
	}

	public Literature() {
	}

}
