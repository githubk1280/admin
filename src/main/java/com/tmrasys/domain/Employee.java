package com.tmrasys.domain;

import lombok.Data;

@Data
public class Employee {
	private int employeeId;
	private String name;
	private String password;
	private int privilege;
	private int employeeRoleId;
}
