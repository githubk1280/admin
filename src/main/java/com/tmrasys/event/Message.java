package com.tmrasys.event;

import lombok.Data;

@Data
public class Message {
	private int projectId;
	private int userId;
	private int percentage;
	private String content;

	public Message(int projectId, int userId, int percentage, String content) {
		super();
		this.projectId = projectId;
		this.userId = userId;
		this.percentage = percentage;
		this.content = content;
	}

	public Message() {
	}

}
