package com.tmrasys.service.project;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmrasys.dao.ProjectDao;
import com.tmrasys.domain.Customer;
import com.tmrasys.domain.Project;
import com.tmrasys.domain.ProjectIdPrincipal;
import com.tmrasys.service.customer.CustomerService;

@Service
public class ProjectServiceImpl implements ProjectService {
	@Autowired
	private ProjectDao projectDao;
	@Autowired
	private CustomerService customerService;

	@Override
	public Project loadProjectById(String projectId) {
		return projectDao.loadProjectById(projectId);
	}

	@Override
	public List<Project> loadProjectsByEmployee(int userId) {
		return projectDao.loadProjectsByEmployee(userId);
	}

	@Override
	public void updateProject(Project project) {
		projectDao.updateProject(project);
	}

	@Override
	public void addProject(Project project) {
		projectDao.addProject(project);
	}

	@Override
	public List<ProjectIdPrincipal> loadProjectIdPrincipal(int userId) {
		List<ProjectIdPrincipal> list = new ArrayList<ProjectIdPrincipal>();
		List<Project> pros = projectDao.loadProjectsByEmployee(userId);
		for (Project project : pros) {
			ProjectIdPrincipal projectIdPrincipal = new ProjectIdPrincipal();
			projectIdPrincipal.setProjectId(project.getProjectId());
			List<Customer> cus = customerService.getByProjectId(project
					.getProjectId());
			for (Customer customer : cus) {
				if (customer.getPrincipalNumber() == 1) {
					projectIdPrincipal.setPrincipal(customer.getCustomerName());
				}
			}
			list.add(projectIdPrincipal);
		}
		return list;
	}
	

	@Override
	public List<Project> loadProjectsPagination(int userId, int pageIndex) {
		int start = 0;
		int end = 10;
		if (pageIndex > 1) {
			start = (pageIndex - 1) * 10;
		}
		return projectDao.loadProjectsPagination(userId, start, end);
	}

	@Override
	public int countProjectsByEmployee(int employeeId) {
		return projectDao.countProjectsByEmployee(employeeId);
	}

	@Override
	public List<Project> findProjectByProjectName(String projectName,
			int employeeID) {
		return projectDao.findProjectByProjectName(projectName, employeeID);
	}

	@Override
	public List<Project> loadAllProjects() {
		return projectDao.loadAllProjects();
	}

	@Override
	public boolean hasAccessAuth(int employeeId, String projectId) {
		Project project = projectDao.loadProjectsByEmployeeAndId(employeeId,
				projectId);
		if(null == project)
			return false;
		return true;
	}

	@Override
	public List<ProjectIdPrincipal> loadProjectCustomer(int userId) {
		List<ProjectIdPrincipal> list = new ArrayList<ProjectIdPrincipal>();
		List<Project> pros = projectDao.loadProjectsByEmployee(userId);
		for (Project project : pros) {
			ProjectIdPrincipal projectIdPrincipal = new ProjectIdPrincipal();
			projectIdPrincipal.setProjectId(project.getProjectId());
			List<Customer> cus = customerService.getByProjectId(project
					.getProjectId());
			for (Customer customer : cus) {
				if (customer.getPrincipalNumber() == 1) {
					projectIdPrincipal.setPrincipal(customer.getCustomerName());
				}
			}
			int countProjectPrincipal = customerService.countProjectPrincipal(project.getProjectId());
			int countProjectFirst = customerService.countProjectFirst(project.getProjectId());
			int countProjectSecond = customerService.countProjectSecond(project.getProjectId());
			if(countProjectPrincipal==0){
				projectIdPrincipal.setCountProjectPrincipal(countProjectPrincipal);
			}else{
				projectIdPrincipal.setCountProjectPrincipal(1);
				if(countProjectFirst==0){
					projectIdPrincipal.setCountProjectFirst(countProjectFirst);
				}else{
					projectIdPrincipal.setCountProjectFirst(1);
					if(countProjectSecond==0){
						projectIdPrincipal.setCountProjectSecond(countProjectSecond);
					}else{
						projectIdPrincipal.setCountProjectSecond(1);
					}
				}
			}
			list.add(projectIdPrincipal);
		}
		return list;
	}

	@Override
	public List<Project> loadCompletedProjectsPagination(int userId,
			int pageIndex) {
		int start = 0;
		int end = 10;
		if (pageIndex > 1) {
			start = (pageIndex - 1) * 10;
		}
		return projectDao.loadCompletedProjectsPagination(userId, start, end);
	}

	@Override
	public int countCompletedProjectsByEmployee(int employeeId) {
		return projectDao.countCompletedProjectsByEmployee(employeeId);
	}

	@Override
	public void addContent(String projectId, String content) {
		Project project = projectDao.loadProjectById(projectId);
		project.setAssignContent(content);
		projectDao.updateProject(project);
	}

}
