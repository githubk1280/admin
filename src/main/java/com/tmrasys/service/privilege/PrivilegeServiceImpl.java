package com.tmrasys.service.privilege;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmrasys.dao.PrivilegeDao;
@Service
public class PrivilegeServiceImpl implements PrivilegeServcie {
	
	@Autowired
	private PrivilegeDao privilegeDao;

	@Override
	public String getPrivilegeByUserId(int employeeId) {
		return privilegeDao.getPrivilegeByUserId(employeeId);
	}

}
