package com.tmrasys.domain;

import java.util.Date;

import lombok.Data;

import org.springframework.format.annotation.DateTimeFormat;

@Data
public class Project {
	private String projectId;
	private String projectName;
	private int priority;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date startDate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date endDate;
	private char needPrincipalAssist;
	private String projectContent;
	/**
	 * 潜在经费
	 */
	private String potentialExpenditure;
	/**
	 * 样本数量
	 */
	private int sampleCount;
	/**
	 * 研究方向
	 */
	private String researchDirection;
	/**
	 * 技术平台
	 */
	private String platformDemand;
	private char hasCorporatedIntention;
	private char needProjectPlan;
	private char needSCI;
	private String projectNote;
	private String projectType;
	/**
	 * 项目百分比
	 */
	private int projectStatusPercentage;
}
