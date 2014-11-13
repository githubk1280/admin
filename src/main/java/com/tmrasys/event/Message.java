package com.tmrasys.event;

import lombok.Data;

@Data
public class Message {
	private int projectId;
	private int userId;
	private String content;

	public Message(int projectId, int userId, String content) {
		super();
		this.projectId = projectId;
		this.userId = userId;
		this.content = content;
	}

}
