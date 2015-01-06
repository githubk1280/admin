package com.tmrasys.service.contactRecord;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmrasys.dao.ContactRecordDao;
import com.tmrasys.domain.ContactRecord;

@Service
public class ContactRecordServiceImpl implements ContactRecordService {
	
	@Autowired
	private ContactRecordDao contactRecordDao;

	@Override
	public List<ContactRecord> getByCustomerId(int id) {
		return contactRecordDao.getByCustomerId(id);
	}

	@Override
	public void addContact(ContactRecord record) {
		contactRecordDao.addContact(record);
	}

}
