package com.tmrasys.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ProjectProgress {
	private int projectProgressId;
	private String employeeName;
	private String content;
	private Date progressDate;
	private int projectId;
	private int percentage;

	public ProjectProgress(String employeeName, String content,
			Date progressDate, int projectId, int percentage) {
		this.employeeName = employeeName;
		this.content = content;
		this.progressDate = progressDate;
		this.projectId = projectId;
		this.percentage = percentage;
	}

	public ProjectProgress() {
	}

}
