package com.tmrasys.domain;

import lombok.Data;

@Data
public class ProjectCustomer {
	private String projectId;
	private String projectName;
	private int customerId;
	private String customerName;
	private int customerLevel;
	private String workUnit;
	private String department;
	private String position;
	private String resarchDirection;
	private String responsibleArea;	
}
