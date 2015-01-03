package com.tmrasys.domain;

import java.util.List;

public class ProjectProgressPkg {
	private String projectId;
	private List<ProjectProgress> ppList;
	public ProjectProgressPkg(String projectId,List<ProjectProgress> ppList){
		this.projectId = projectId;
		this.ppList = ppList;
	}
	public String getProjectId() {
		return projectId;
	}
	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
	public List<ProjectProgress> getPpList() {
		return ppList;
	}
	public void setPpList(List<ProjectProgress> ppList) {
		this.ppList = ppList;
	}
	
}
