package com.tmrasys.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class ContactRecord {
	private int contactId;
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss.SSSZ")
	private Date contactTime; 
	private String contactContent; 
	private String contactPerson;
	private String contactPhone;
	private int customerId;
}
