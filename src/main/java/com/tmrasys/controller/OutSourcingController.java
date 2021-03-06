package com.tmrasys.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.tmrasys.constant.DataCheckTypeConstant;
import com.tmrasys.constant.page.PageResourceConstant;
import com.tmrasys.domain.Employee;
import com.tmrasys.domain.OutSource;
import com.tmrasys.domain.PageOutSource;
import com.tmrasys.domain.ProjectOutSource;
import com.tmrasys.service.outSource.OutSourceService;
import com.tmrasys.stereotype.DataAccessCheck;
import com.tmrasys.utils.JsonResponseUtils;

@Controller
@RequestMapping("/outsource")
public class OutSourcingController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private OutSourceService outSourceService;
	
	private static final String DATA_OS = "数据分析外包";
	private static final String EXP_OS = "实验外包";

	@DataAccessCheck(forWhat = { DataCheckTypeConstant.OUTSOURCE })
	@RequestMapping("/{osId}")
	public ModelAndView loadProjectById(@PathVariable int osId) {
		OutSource outsource = outSourceService.getById(osId);
		ModelAndView view = new ModelAndView();
		view.addObject("outSource", outsource);
		if(DATA_OS.equals(outsource.getOutSourceType())) {
			view.setViewName(PageResourceConstant.OS_DATADETAIL);
		} else {
			view.setViewName(PageResourceConstant.OS_EXPDETAIL);
		}
		return view;

	}

	@RequestMapping("/list")
	public ModelAndView loadAllProjectsByUser(HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		List<ProjectOutSource> outsources = outSourceService
				.getByEmployee(employee.getEmployeeId());
		ModelAndView view = new ModelAndView();
		view.addObject("outsources", outsources);
		view.setViewName(PageResourceConstant.OS_LIST);
		return view;

	}
	
	@RequestMapping("/pages/{page}")
	public ModelAndView loadAllContractsByUser(@PathVariable int page, HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		int count = outSourceService.countByEmployee(employee.getEmployeeId());
		List<ProjectOutSource> outsources = outSourceService.getPagedByEmployee(employee.getEmployeeId(), page);
		ModelAndView view = new ModelAndView();
		int pages = 1;
		if(count > 10) {
			pages = (count + 9) / 10;
		}
		view.addObject("outsources", outsources);
		view.addObject("pages", pages);
		view.setViewName(PageResourceConstant.OS_LIST);
		return view;

	}
	
	@RequestMapping("/ajax/{projectId}")
	public void load(@PathVariable int projectId, HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		List<OutSource> pos = outSourceService.getOutSourceByProjectId(projectId);
		if (!CollectionUtils.isEmpty(pos)) {
			PageOutSource pgos = new PageOutSource();
			pgos.setExperimentOS(pos.get(0));
			pgos.setDataOS(pos.get(1));
			JsonResponseUtils.returnJsonResponse(response, pgos, true, 200);
		}
	}
	
	@RequestMapping(value = "/ajax/saveOrUpdate")
	public void saveOrUpdate(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		BufferedReader in = request.getReader();
		String s = in.readLine();
		StringBuffer sb = new StringBuffer();
		while (s != null) {
			sb.append(s);
			s = in.readLine();
		}
		PageOutSource pgos = JSON.parseObject(sb.toString(),
				PageOutSource.class);
		OutSource experimentOS = pgos.getExperimentOS();
		OutSource dataOS = pgos.getDataOS();
		if(experimentOS.getOutSourceId() == 0) {
			experimentOS.setOutSourceType("实验外包");
			outSourceService.addOutSource(experimentOS);
		} else {
			outSourceService.updateOutSource(experimentOS);
		}
		if(dataOS.getOutSourceId() == 0) {
			dataOS.setOutSourceType("数据分析外包");
			outSourceService.addOutSource(dataOS);
		} else {
			outSourceService.updateOutSource(dataOS);
		}
		pgos.setExperimentOS(experimentOS);
		pgos.setDataOS(dataOS);
		JsonResponseUtils.returnJsonResponse(response, pgos, true, 200);
	}
	
	@RequestMapping("/search")
	public ModelAndView search(String searchStr, HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		System.out.println("::::::::::::::::::::::::"+employee.getEmployeeId());
		System.out.println("::::::::::::::::::::::::"+searchStr);
		List<ProjectOutSource> outsources = outSourceService
				.loadOutSourceByProjectName(searchStr, employee.getEmployeeId());
		ModelAndView view = new ModelAndView();
		view.addObject("outsources", outsources);
		view.setViewName(PageResourceConstant.OS_LIST);
		return view;
	}
	
	@RequestMapping("/addData-redirect")
	public ModelAndView addDataRedirect() {
		OutSource os = new OutSource();
		ModelAndView view = new ModelAndView();
		view.addObject(os);
		view.setViewName(PageResourceConstant.OS_ADDDATA);
		return view;

	}
	
	@RequestMapping("/addExp-redirect")
	public ModelAndView addExpRedirect() {
		OutSource os = new OutSource();
		ModelAndView view = new ModelAndView();
		view.addObject(os);
		view.setViewName(PageResourceConstant.OS_ADDEXP);
		return view;

	}

	@RequestMapping("/addData")
	public ModelAndView addData(OutSource os, HttpSession session) {
		os.setOutSourceType(DATA_OS);
		outSourceService.addOutSource(os);
		return new ModelAndView("redirect:pages/1");
	}
	
	@RequestMapping("/addExp")
	public ModelAndView addExp(OutSource os, HttpSession session) {
		os.setOutSourceType(EXP_OS);
		outSourceService.addOutSource(os);
		return new ModelAndView("redirect:pages/1");
	}
	
	@RequestMapping("/updateData")
	public ModelAndView updateData(OutSource os) {
		os.setOutSourceType(DATA_OS);
		outSourceService.updateOutSource(os);
		ModelAndView view = new ModelAndView();
		view.addObject(os);
		view.setViewName(PageResourceConstant.OS_DATADETAIL);
		return view;
	}
	
	@RequestMapping("/updateExp")
	public ModelAndView updateExp(OutSource os) {
		os.setOutSourceType(EXP_OS);
		outSourceService.updateOutSource(os);
		ModelAndView view = new ModelAndView();
		view.addObject(os);
		view.setViewName(PageResourceConstant.OS_EXPDETAIL);
		return view;
	}
	
}
