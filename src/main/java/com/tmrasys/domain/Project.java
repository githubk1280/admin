package com.tmrasys.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Project {
	private int projectId;
	private String projectName;
	private int priority;
	private Date startDate;
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
}
