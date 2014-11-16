package com.tmrasys.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class Contract {
	private int contractId;
	/**
	 * 合同签署人甲方
	 */
	private String signPersonNameA;
	/**
	 * 合同签署人乙方
	 */
	private String signPersonNameB;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date signDate;
	private float advancedAmount;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date advancedAmountDate;
	private float balancedAmount;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date balancedAmountDate;
	private String advancedAmountStatus;
	private String balancedAmountStatus;
	private int projectId;
	private int totalAmount;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date startDate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date endDate;
	/**
	 * 纸质项目编号
	 */
	private String contractPaperId;
	private String contractType;
}
