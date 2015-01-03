package com.tmrasys.domain;

import lombok.Data;

@Data
public class Customer {
	private int customerId;
	private String projectId;
	private String customerName;
	private String sex;
	private int age;
	private String phone;
	private String cellphone;
	private String workUnit;
	private String department;
	private String position;
	private String email;
	private String adress;
	private String resarchDirection;
	private String responsibleArea;
	private int customerLevel;
	private String relationShip;
	private int principalNumber;
	/**
	 *  找到第一负责人
	 */
	private int principalId;
	private String projectName;
}
