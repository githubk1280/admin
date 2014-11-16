package com.tmrasys.domain;

import lombok.Data;

@Data
public class MessageText {
	private int id;
	private String msgText;

	public MessageText(String msgText) {
		this.msgText = msgText;
	}

	public MessageText() {
	}

}
