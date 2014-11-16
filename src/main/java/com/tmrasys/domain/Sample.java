package com.tmrasys.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class Sample {
	private int sampleId;
	private int projectId;
	private String samplePrincripal;
	private String projectPrincripal;
	private String sourceUnit;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date reciveDate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date reportDate;
	private String diskLocation;
	private int sampleAmount;
	/**
	 * 外送编号
	 */
	private String deliveryNum;
	private String deliveryType;
	private char isDelivery;
}
