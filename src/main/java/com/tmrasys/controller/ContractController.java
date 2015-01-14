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

import com.tmrasys.constant.DataCheckTypeConstant;
import com.tmrasys.constant.page.PageResourceConstant;
import com.tmrasys.domain.Contract;
import com.tmrasys.domain.Employee;
import com.tmrasys.service.contract.ContractService;
import com.tmrasys.stereotype.DataAccessCheck;

@Controller
@RequestMapping("/contract")
public class ContractController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private ContractService contractService;

	@PostConstruct
	public void init() {
		
	}

	@DataAccessCheck(forWhat = { DataCheckTypeConstant.CONTRACT })
	@RequestMapping("/{contractId}")
	public ModelAndView loadProjectById(@PathVariable int contractId) {
		Contract contract = contractService.getById(contractId);
		ModelAndView view = new ModelAndView();
		view.addObject("contract", contract);
		view.setViewName(PageResourceConstant.CONTRACT_DETAIL);
		return view;

	}

	@RequestMapping("/list")
	public ModelAndView loadPagedContractsByUser(HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		List<Contract> contracts = contractService.getByEmployee(employee
				.getEmployeeId());
		ModelAndView view = new ModelAndView();
		view.addObject("contracts", contracts);
		view.setViewName(PageResourceConstant.CONTRACT_LIST);
		return view;

	}

	@RequestMapping("/pages/{page}")
	public ModelAndView loadAllContractsByUser(@PathVariable int page,
			HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		int count = contractService.countByEmployee(employee.getEmployeeId());
		List<Contract> contracts = contractService.getPagedByEmployee(
				employee.getEmployeeId(), page);
		ModelAndView view = new ModelAndView();
		int pages = 1;
		if (count > 10) {
			pages = (count + 9) / 10;
		}
		view.addObject("contracts", contracts);
		view.addObject("pages", pages);
		view.setViewName(PageResourceConstant.CONTRACT_LIST);
		return view;

	}

	@RequestMapping("/add")
	public ModelAndView add(Contract contract, HttpSession session) {
		contractService.addContract(contract);
		return new ModelAndView("redirect:pages/1");
	}

	@RequestMapping("/add-redirect")
	public ModelAndView addRedirect() {
		Contract contract = new Contract();
		ModelAndView view = new ModelAndView();
		view.addObject(contract);
		view.setViewName(PageResourceConstant.CONTRACT_ADD);
		return view;
	}

	@RequestMapping("/update")
	public ModelAndView update(Contract contract) {
		contractService.updateContract(contract);
		ModelAndView view = new ModelAndView();
		view.addObject(contract);
		view.setViewName(PageResourceConstant.CONTRACT_DETAIL);
		return view;
	}

	@RequestMapping("/search")
	public ModelAndView search(String searchStr, HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		List<Contract> contracts = contractService.findContractByProjectId(
				searchStr, employee.getEmployeeId());
		ModelAndView view = new ModelAndView();
		view.addObject("contracts", contracts);
		view.setViewName(PageResourceConstant.CONTRACT_LIST);
		return view;
	}

}
