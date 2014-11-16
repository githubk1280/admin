package com.tmrasys.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Sample {
	private int sampleId;
	private int projectId;
	private String samplePrincripal;
	private String projectPrincripal;
	private String sourceUnit;
	private Date reciveDate;
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
