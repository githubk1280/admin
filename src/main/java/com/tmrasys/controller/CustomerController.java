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
import com.tmrasys.constant.page.PageResourceConstant;
import com.tmrasys.domain.Customer;
import com.tmrasys.domain.Employee;
import com.tmrasys.service.customer.CustomerService;
import com.tmrasys.utils.JsonResponseUtils;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private CustomerService customerService;

	@RequestMapping("/{customerId}")
	public ModelAndView loadProjectById(@PathVariable int customerId) {
		Customer customer = customerService.getById(customerId);
		ModelAndView view = new ModelAndView();
		view.addObject("customer", customer);
		view.setViewName(PageResourceConstant.CUSTOMER_DETAIL);
		return view;

	}

	@RequestMapping("/list")
	public ModelAndView loadAllProjectsByUser(HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		List<Customer> customers = customerService.getByEmployee(employee
				.getEmployeeId());
		ModelAndView view = new ModelAndView();
		view.addObject("customers", customers);
		view.setViewName(PageResourceConstant.CUSTOMER_LIST);
		return view;

	}
	
	@RequestMapping("/pages/{page}")
	public ModelAndView loadAllCustomersByUser(@PathVariable int page, HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		int count = customerService.countByEmployee(employee.getEmployeeId());
		List<Customer> customers = customerService.getPagedByEmployee(employee.getEmployeeId(), page);
		ModelAndView view = new ModelAndView();
		int pages = 1;
		if(count > 10) {
			pages = (count + 9) / 10;
		}
		view.addObject("customers", customers);
		view.addObject("pages", pages);
		view.setViewName(PageResourceConstant.CUSTOMER_LIST);
		return view;

	}

	@RequestMapping("/ajax/{projectId}")
	public void load(@PathVariable String projectId, HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		List<Customer> customers = customerService.getByProjectId(projectId);
		if (!CollectionUtils.isEmpty(customers)) {
			JsonResponseUtils
					.returnJsonResponse(response, customers, true, 200);
		}
	}

	@RequestMapping("/ajax/update")
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		BufferedReader in = request.getReader();
		String s = in.readLine();
		StringBuffer sb = new StringBuffer();
		while (s != null) {
			sb.append(s);
			s = in.readLine();
		}
		List<Customer>customers = JSON.parseArray(sb.toString(), Customer.class);
		if (!CollectionUtils.isEmpty(customers)) {
			for(Customer c : customers){
				if(customerService.getById(c.getCustomerId()) == null){
					customerService.addCustomer(c);
				}else{
					customerService.updateCustomer(c);
				}
			}
		}
		JsonResponseUtils.returnJsonResponse(response, "", true, 200);
	}
	
	@RequestMapping("/addPrincipal-redirect")
	public ModelAndView addPrincipalRedirect() {
		Customer cust = new Customer();
		ModelAndView view = new ModelAndView();
		view.addObject(cust);
		view.setViewName(PageResourceConstant.CUSTOMER_ADDPRINCIPAL);
		return view;

	}
	
	@RequestMapping("/addFirst-redirect")
	public ModelAndView addFirstRedirect() {
		Customer cust = new Customer();
		ModelAndView view = new ModelAndView();
		view.addObject(cust);
		view.setViewName(PageResourceConstant.CUSTOMER_ADDFIRST);
		return view;
	}
	
	@RequestMapping("/addSecond-redirect")
	public ModelAndView addSecondRedirect() {
		Customer cust = new Customer();
		ModelAndView view = new ModelAndView();
		view.addObject(cust);
		view.setViewName(PageResourceConstant.CUSTOMER_ADDSECOND);
		return view;

	}

}
