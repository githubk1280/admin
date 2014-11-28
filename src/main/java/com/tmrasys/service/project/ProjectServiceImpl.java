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
	public Project loadProjectById(int projectId) {
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
		for(Project project : pros) {
			ProjectIdPrincipal projectIdPrincipal = new ProjectIdPrincipal();
			projectIdPrincipal.setProjectId(project.getProjectId());
			List<Customer> cus = customerService.getByProjectId(project.getProjectId());
			for(Customer customer : cus) {
				if(customer.getPrincipalNumber() == 1) {
					projectIdPrincipal.setPrincipal(customer.getCustomerName());
				}
			}
			list.add(projectIdPrincipal);
		}
		return list;
	}


}
