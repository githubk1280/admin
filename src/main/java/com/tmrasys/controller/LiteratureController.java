package com.tmrasys.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tmrasys.constant.page.PageResourceConstant;
import com.tmrasys.constant.page.PaginationConstant;
import com.tmrasys.domain.Literature;
import com.tmrasys.service.literature.LiteratureService;

@Controller
@RequestMapping("/literature")
public class LiteratureController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private LiteratureService literatureService;

	@RequestMapping("/list")
	public ModelAndView list(int pageIndex) {
		List<Literature> lts = literatureService.loadAllLiteratures(pageIndex,
				PaginationConstant.DEFAULT_PAGE_SIZE);
		int totalCount = literatureService.getTotalCount();
		ModelAndView view = new ModelAndView();
		view.setViewName(PageResourceConstant.LTS_LIST);
		view.addObject("lts", lts);
		view.addObject("total", totalCount);
		return view;
	}

	@RequestMapping("/add-redirect")
	public ModelAndView addRedirect() {
		ModelAndView view = new ModelAndView();
		Literature lte = new Literature();
		view.addObject("lte", lte);
		view.setViewName(PageResourceConstant.LTS_ADD);
		return view;
	}

	@RequestMapping("/add")
	public ModelAndView add(Literature lte) {
		literatureService.insert(lte);
		ModelAndView view = new ModelAndView();
		view.setViewName("redirect:/literature/list");
		return view;
	}
}
