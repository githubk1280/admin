package com.tmrasys.event;

import lombok.Data;

@Data
public class StatusMessage {
	private String projectId;
	private int percentage;
	private String content;
	/**
	 * 更新状态的 employeeId
	 */
	private int operatorId;

	public StatusMessage(int operatorId, String projectId, int percentage,
			String content) {
		super();
		this.projectId = projectId;
		this.percentage = percentage;
		this.content = content;
		this.operatorId = operatorId;
	}

	public StatusMessage() {
	}

}
