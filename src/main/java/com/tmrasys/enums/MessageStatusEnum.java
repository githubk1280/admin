package com.tmrasys.enums;

public interface MessageStatusEnum {
	public enum OutSourceTypeEnum {
		UNREAD(0), READ(1), DELETED(2);
		private int value;

		OutSourceTypeEnum(int value) {
			this.value = value;
		}

		public int getValue() {
			return value;
		}

		public void setValue(int value) {
			this.value = value;
		}

	}
}
