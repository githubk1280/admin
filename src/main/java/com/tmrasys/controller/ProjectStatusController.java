package com.tmrasys.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tmrasys.domain.ProjectProgress;
import com.tmrasys.event.Message;
import com.tmrasys.event.StatusChangedEvent;
import com.tmrasys.service.projectProgress.ProjectProgressService;
import com.tmrasys.utils.JsonResponseUtils;

@Controller
@RequestMapping("/status")
public class ProjectStatusController implements ApplicationContextAware {
	Logger logger = Logger.getLogger(getClass());

	private ApplicationContext applicationContext;

	@Autowired
	private ProjectProgressService projectProgressService;

	@RequestMapping("/ajax/{projectId}")
	public void load(@PathVariable int projectId,HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		List<ProjectProgress> progresses = projectProgressService
				.getByProjectId(projectId);
		if (!CollectionUtils.isEmpty(progresses)) {
			ProjectProgress progress = progresses.get(progresses.size() - 1);
			request.setAttribute("projectStatus", progress);
			JsonResponseUtils.returnJsonResponse(response, progress);
		}
	}

	@RequestMapping("/add")
	public void add() {
		// insert
		//
		// this.notifyObservers(arg); userId,projectId,percentage,content
		applicationContext.publishEvent(new StatusChangedEvent(new Message()));
	}

	@Override
	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		this.applicationContext = applicationContext;
	}

}
