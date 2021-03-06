package com.tmrasys.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ProjectOutSource {
	private int outSourceId;
	private String outSourceUnit;
	private String address;
	private Date sendSampleDate;
	private int sendSampleCount;
	private boolean isErRecived;
	private String outSourceStatus;
	private String outSourceType;
	private String projectId;
	private String projectName;
}
