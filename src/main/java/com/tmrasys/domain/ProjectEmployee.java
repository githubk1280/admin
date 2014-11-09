package com.tmrasys.domain;

import lombok.Data;

@Data
public class ProjectEmployee {
	private int projectId;
	private int employeeId;

	public ProjectEmployee(int projectId, int employeeId) {
		super();
		this.projectId = projectId;
		this.employeeId = employeeId;
	}

}
