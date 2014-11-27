package com.tmrasys.domain;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class OutSource {
	private int outSourceId;
	private String outSourceUnit;
	private String address;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date sendSampleDate;
	private int sendSampleCount;
	private int exprResultRecived;
	private String outSourceStatus;
	private String outSourceType;
	private int projectId;
	private String contactPerson;
	private String contactPhone;
	private BigDecimal contractAmount;
	private String contactInfo;
}
