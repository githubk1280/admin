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
	private boolean needPrincipalAssist;
	private String projectContent;
	private String potentialExpenditure;
	private int sampleCount;
	private String researchDirection;
	private String platformDemand;
	private boolean hasCorporatedIntention;
	private boolean needProjectPlan;
	private boolean needSCI;
	private String projectNote;
}
