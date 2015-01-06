package com.tmrasys.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ContactRecord {
	private int contactId;
	private Date contactTime;
	private String contactContent;
	private String contactPerson;
	private String contactPhone;
	private int customerId;
}
