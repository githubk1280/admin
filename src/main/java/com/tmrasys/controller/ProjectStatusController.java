package com.tmrasys.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.tmrasys.constant.page.PageResourceConstant;
import com.tmrasys.domain.Employee;
import com.tmrasys.domain.Project;
import com.tmrasys.domain.ProjectProgress;
import com.tmrasys.domain.ProjectProgressPkg;
import com.tmrasys.event.StatusChangedEvent;
import com.tmrasys.event.StatusMessage;
import com.tmrasys.service.project.ProjectService;
import com.tmrasys.service.projectProgress.ProjectProgressService;
import com.tmrasys.utils.JsonResponseUtils;

@Controller
@RequestMapping("/status")
public class ProjectStatusController implements ApplicationContextAware {
	Logger logger = Logger.getLogger(getClass());

	private ApplicationContext applicationContext;

	private Map<Integer, String> messageContentMap;

	@Autowired
	private ProjectProgressService projectProgressService;

	@Autowired
	private ProjectService projectService;

	@PostConstruct
	public void init() {
		messageContentMap = new HashMap<Integer, String>();
		messageContentMap.put(30, "%s 更新了状态，更新内容 ：预付款已打.当前项目进度百分比为 30");
		messageContentMap.put(60, "%s 更新了状态，更新内容 ：xxx.当前项目进度百分比为 60");
		messageContentMap.put(90, "%s 更新了状态，更新内容 ：尾款款已打.当前项目进度百分比为 90");
		messageContentMap.put(100, "%s 更新了状态，更新内容 ：项目完成.当前项目进度百分比为 100");
	}

	@RequestMapping("/ajax/{projectId}")
	public void load(@PathVariable String projectId, HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		List<ProjectProgress> progresses = projectProgressService
				.getByProjectId(projectId);
		if (!CollectionUtils.isEmpty(progresses)) {
			ProjectProgress progress = progresses.get(0);
			request.setAttribute("projectStatus", progress);
			JsonResponseUtils.returnJsonResponse(response, progress, true, 200);
		}
	}
	
	@RequestMapping(value = "ajax/proHisBasic/{projectId}")
	public void getProHisBasic(@PathVariable String projectId, HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		List<ProjectProgress> proProgressList = projectProgressService
				.getBasciByProjectId(projectId);
		if (!CollectionUtils.isEmpty(proProgressList)) {
			ProjectProgress progress = proProgressList.get(0);
			request.setAttribute("projectStatus", progress);
			JsonResponseUtils.returnJsonResponse(response, progress, true, 200);
		}

	}
		

	@RequestMapping(value = "/ajax/add")
	public void add(HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws IOException {
		Employee employee = (Employee) session.getAttribute("user");
		BufferedReader in = request.getReader();
		String s = in.readLine();
		StringBuffer sb = new StringBuffer();
		while (s != null) {
			sb.append(s);
			s = in.readLine();
		}
		ProjectProgress progress = JSON.parseObject(sb.toString(),
				ProjectProgress.class);
		String projectId = progress.getProjectId();
		// 1.insert
		progress.setProgressDate(new Date());
		projectProgressService.addProjectProgress(progress);
		// 2.update project table percentate
		Project p = projectService.loadProjectById(projectId);
		p.setProjectStatusPercentage(progress.getPercentage());
		projectService.updateProject(p);
		// 3.publish userId,projectId,percentage,content
		int percentage = progress.getPercentage();
		String content = String.format(messageContentMap.get(percentage),
				progress.getEmployeeName()) + "%";
		applicationContext.publishEvent(new StatusChangedEvent(
				new StatusMessage(employee.getEmployeeId(), projectId,
						percentage, content)));
		JsonResponseUtils.returnJsonResponse(response, progress, true, 200);
	}
	
	

	@RequestMapping(value = "proStatusHistory/{projectId}")
	public ModelAndView loadProHis(@PathVariable String projectId) {
		List<ProjectProgress> proProgressList = projectProgressService
				.getByProjectId(projectId);
		ProjectProgressPkg pppkg = new ProjectProgressPkg(projectId,proProgressList);
		ModelAndView view = new ModelAndView();
		view.addObject("proHis", pppkg);
		view.setViewName(PageResourceConstant.PRO_STATUS);

		return view;
	}
	
	

	// @RequestMapping(value = "/ajax/add",consumes="application/json")
	// public void add(@RequestBody ProjectProgress progress) {
	// System.out.println(progress);
	// }

	@Override
	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		this.applicationContext = applicationContext;
	}

}
