package com.tmrasys.domain;

import java.util.List;

public class ProjectProgressPkg {
	private int projectId;
	private List<ProjectProgress> ppList;
	public ProjectProgressPkg(int projectId,List<ProjectProgress> ppList){
		this.projectId = projectId;
		this.ppList = ppList;
	}
	public int getProjectId() {
		return projectId;
	}
	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}
	public List<ProjectProgress> getPpList() {
		return ppList;
	}
	public void setPpList(List<ProjectProgress> ppList) {
		this.ppList = ppList;
	}
	
}
