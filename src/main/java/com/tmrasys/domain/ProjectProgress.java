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
}
