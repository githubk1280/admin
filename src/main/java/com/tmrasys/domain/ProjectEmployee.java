package com.tmrasys.domain;

import lombok.Data;

@Data
public class ProjectEmployee {
	private String projectId;
	private int employeeId;
	private String assignContent;
	
	public ProjectEmployee(String projectId, int employeeId) {
		super();
		this.projectId = projectId;
		this.employeeId = employeeId;
	}
	
	public ProjectEmployee() {
		
	}

}
