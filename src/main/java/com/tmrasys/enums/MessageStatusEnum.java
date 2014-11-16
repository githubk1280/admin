package com.tmrasys.enums;

public enum MessageStatusEnum {
	UNREAD(0), READ(1), DELETED(2);
	private int value;

	MessageStatusEnum(int value) {
		this.value = value;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}

}
