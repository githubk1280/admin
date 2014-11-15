package com.tmrasys.domain;

import java.util.Date;

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
	private Date signDate;
	private float advancedAmount;
	private Date advancedAmountDate;
	private float balancedAmount;
	private Date balancedAmountDate;
	private String advancedAmountStatus;
	private String balancedAmountStatus;
	private int projectId;
	/**
	 * 纸质项目编号
	 */
	private String contractPaperId;
	private String contractType;
}
