package com.tmrasys.enums;

public enum UserRoleEnum {
	MANAGER("M"), EMPLOYEE("E"), CUSTOMER("C");
	private String value;

	private UserRoleEnum(String value) {
		this.value = value;
	}

	public String getValue() {
		return value;
	}

}
