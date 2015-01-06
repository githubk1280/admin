package com.tmrasys.service.contactRecord;

import java.util.List;

import com.tmrasys.domain.ContactRecord;

public interface ContactRecordService {
	List<ContactRecord> getByCustomerId(int id);
	void addContact(ContactRecord record);
}
