package com.tmrasys.domain;

import java.util.Date;

import lombok.Data;

import org.springframework.format.annotation.DateTimeFormat;

@Data
public class ProjectProgress {
	private int projectProgressId;
	private int employeeId;
	private String content;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date progressDate;
	private int projectId;
	private int percentage;

	public ProjectProgress() {
	}

	public ProjectProgress(int employeeId, String content, Date progressDate,
			int projectId, int percentage) {
		super();
		this.employeeId = employeeId;
		this.content = content;
		this.progressDate = progressDate;
		this.projectId = projectId;
		this.percentage = percentage;
	}

}
