package com.tmrasys.event;

import lombok.Data;

@Data
public class Message {
	private int projectId;
	private String employeeName;
	private int percentage;
	private String content;

	public Message(int projectId, String employeeName, int percentage,
			String content) {
		super();
		this.projectId = projectId;
		this.employeeName = employeeName;
		this.percentage = percentage;
		this.content = content;
	}

	public Message() {
	}

}
