package com.tmrasys.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tmrasys.domain.Privilege;

@Repository
public interface PrivilegeDao {
	List<Privilege> getAllPrivileges();
	
}
