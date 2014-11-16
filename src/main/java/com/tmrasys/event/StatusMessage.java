package com.tmrasys.event;

import lombok.Data;

@Data
public class StatusMessage {
	private int projectId;
	private int percentage;
	private String content;

	public StatusMessage(int projectId, int percentage,
			String content) {
		super();
		this.projectId = projectId;
		this.percentage = percentage;
		this.content = content;
	}

	public StatusMessage() {
	}

}
