package com.tmrasys.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tmrasys.domain.ContactRecord;

@Repository
public interface ContactRecordDao {
	List<ContactRecord> getByCustomerId(int id);
	void addContact(ContactRecord record);
}
