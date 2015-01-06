package com.tmrasys.domain;

import java.util.List;

public class TouchRecPkg {
	private int customerId;
	private String customerName;
	private List<ContactRecord> crList;
	public TouchRecPkg(int customerId,List<ContactRecord> crList,String customerName){
		this.customerId = customerId;
		this.crList = crList;
		this.customerName = customerName;
	}
	
	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public List<ContactRecord> getCrList() {
		return crList;
	}
	public void setCrList(List<ContactRecord> crList) {
		this.crList = crList;
	}
	
}
