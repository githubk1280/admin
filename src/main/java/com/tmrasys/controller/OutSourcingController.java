package com.tmrasys.controller;

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

import com.tmrasys.constant.page.PageResourceConstant;
import com.tmrasys.domain.Contract;
import com.tmrasys.domain.Employee;
import com.tmrasys.domain.OutSource;
import com.tmrasys.domain.ProjectOutSource;
import com.tmrasys.service.outSource.OutSourceService;
import com.tmrasys.utils.JsonResponseUtils;

@Controller
@RequestMapping("/outsource")
public class OutSourcingController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private OutSourceService outSourceService;

	@RequestMapping("/{osId}")
	public ModelAndView loadProjectById(@PathVariable int osId) {
		OutSource outsource = outSourceService.getById(osId);
		ModelAndView view = new ModelAndView();
		 view.addObject("outsource", outsource);
		view.setViewName(PageResourceConstant.OS_DETAIL);
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
	
	@RequestMapping("/ajax/{projectId}")
	public void load(@PathVariable int projectId, HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		List<OutSource> pos = outSourceService.getOutSourceByProjectId(projectId);
		if (!CollectionUtils.isEmpty(pos)) {
			OutSource experimentOS = pos.get(0);
			request.setAttribute("os1", pos.get(0));
			if(pos.size()>1) {
				request.setAttribute("os2", pos.get(1));
			}
			JsonResponseUtils.returnJsonResponse(response, pos, true, 200);
		}
	}

}
