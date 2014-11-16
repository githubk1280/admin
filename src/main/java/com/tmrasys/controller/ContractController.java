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
import com.tmrasys.domain.Contract;
import com.tmrasys.domain.Employee;
import com.tmrasys.service.contract.ContractService;

@Controller
@RequestMapping("/contract")
public class ContractController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private ContractService contractService;

	@PostConstruct
	public void init() {
	}

	@RequestMapping("/{contractId}")
	public ModelAndView loadProjectById(@PathVariable int contractId) {
		Contract contract = contractService.getById(contractId);
		ModelAndView view = new ModelAndView();
		view.addObject("contract", contract);
		view.setViewName(PageResourceConstant.CONTRACT_DETAIL);
		return view;

	}

	@RequestMapping("/list")
	public ModelAndView loadAllContractsByUser(HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		List<Contract> contracts = contractService.getByEmployee(employee
				.getEmployeeId());
		ModelAndView view = new ModelAndView();
		view.addObject("contracts", contracts);
		view.setViewName(PageResourceConstant.CONTRACT_LIST);
		return view;

	}

	@RequestMapping("/add")
	public ModelAndView add(Contract contract, HttpSession session) {
		contractService.addContract(contract);
		return new ModelAndView("redirect:list");
	}

	@RequestMapping("/add-redirect")
	public ModelAndView addRedirect() {
		Contract contract = new Contract();
		ModelAndView view = new ModelAndView();
		view.addObject(contract);
		view.setViewName(PageResourceConstant.PROJECT_ADD);
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

}
