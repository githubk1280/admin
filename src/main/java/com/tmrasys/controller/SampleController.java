package com.tmrasys.controller;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tmrasys.constant.page.PageResourceConstant;
import com.tmrasys.domain.Employee;
import com.tmrasys.domain.Sample;
import com.tmrasys.service.sample.SampleService;

@Controller
@RequestMapping("/sample")
public class SampleController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private SampleService sampleService;

	@PostConstruct
	public void init() {
	}

	@RequestMapping("/{sampleId}")
	public ModelAndView loadProjectById(@PathVariable int sampleId) {
		Sample sample = sampleService.getById(sampleId);
		ModelAndView view = new ModelAndView();
		view.addObject("sample", sample);
		view.setViewName(PageResourceConstant.SAMPLE_DETAIL);
		return view;

	}

	@RequestMapping("/list")
	public ModelAndView loadAllSamplesByUser(HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		List<Sample> samples = sampleService.getByEmployee(employee
				.getEmployeeId());
		ModelAndView view = new ModelAndView();
		view.addObject("samples", samples);
		view.setViewName(PageResourceConstant.SAMPLE_LIST);
		return view;

	}

	@RequestMapping("/add")
	public ModelAndView add(Sample sample, HttpSession session) {
		sampleService.addSample(sample);
		return new ModelAndView("redirect:list");
	}

	@RequestMapping("/add-redirect")
	public ModelAndView addRedirect() {
		Sample sample = new Sample();
		ModelAndView view = new ModelAndView();
		view.addObject("sample", sample);
		view.setViewName(PageResourceConstant.SAMPLE_ADD);
		return view;
	}
	
	@RequestMapping("/update")
	public ModelAndView update(Sample sample) {
		sampleService.updateSample(sample);
		ModelAndView view = new ModelAndView();
		view.addObject(sample);
		view.setViewName(PageResourceConstant.SAMPLE_DETAIL);
		return view;
	}

}
