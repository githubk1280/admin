package com.tmrasys.domain;

import java.util.Date;

import lombok.Data;

@Data
public class OutSource {
	private int outSourceId;
	private String outSourceUnit;
	private String address;
	private Date sendSampleDate;
	private int sendSampleCount;
	private boolean exprResultRecived;
	private String outSourceStatus;
	private String outSourceType;
	private int projectId;
}
