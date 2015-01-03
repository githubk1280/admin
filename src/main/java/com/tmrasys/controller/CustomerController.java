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
import com.tmrasys.domain.ProjectIdPrincipal;
import com.tmrasys.service.customer.CustomerService;
import com.tmrasys.service.project.ProjectService;
import com.tmrasys.utils.JsonResponseUtils;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private CustomerService customerService;
	@Autowired
	private ProjectService projectService;

	@RequestMapping("/{customerId}&{principalId}")
	public ModelAndView loadProjectById(@PathVariable int customerId,@PathVariable int principalId) {
		Customer customer = customerService.getById(customerId);
		ModelAndView view = new ModelAndView();
		view.addObject("customer", customer);
		if(principalId==0){
			view.setViewName(PageResourceConstant.CUSTOMER_PRINCIPALDETAIL);
		}else if(principalId==1){
			view.setViewName(PageResourceConstant.CUSTOMER_FIRSTDETAIL);
		}else if(principalId==2){
			view.setViewName(PageResourceConstant.CUSTOMER_SECONDDETAIL);
		}
		
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
	
	@RequestMapping("/addPrincipal")
	public ModelAndView addPrincipal(Customer customer,HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		customer.setPrincipalId(0);
		customer.setPrincipalNumber(0);
		customerService.addCustomer(customer);
		ModelAndView view = new ModelAndView();
		view.setViewName("redirect:pages/1");
		return view;
	}
	
	@RequestMapping("/addFirst")
	public ModelAndView addFirst(Customer customer,HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		customer.setPrincipalId(1);
		customer.setPrincipalNumber(1);
		customerService.addCustomer(customer);
		ModelAndView view = new ModelAndView();
		view.setViewName("redirect:pages/1");
		return view;
	}
	
	@RequestMapping("/addSecond")
	public ModelAndView addSecond(Customer customer,HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		customer.setPrincipalId(2);
		customer.setPrincipalNumber(2);
		customerService.addCustomer(customer);
		ModelAndView view = new ModelAndView();
		view.setViewName("redirect:pages/1");
		return view;
	}
	
	@RequestMapping("/updatePrincipal/{customerId}")
	public ModelAndView updatePrincipal(Customer customer,HttpSession session,@PathVariable int customerId) {
		Employee employee = (Employee) session.getAttribute("user");
		customer.setCustomerId(customerId);
		customerService.updateCustomer(customer);
		ModelAndView view = new ModelAndView();
		view.setViewName(PageResourceConstant.CUSTOMER_PRINCIPALDETAIL);
		return view;
	}
	
	@RequestMapping("/updateFirst/{customerId}")
	public ModelAndView updateFirst(Customer customer,HttpSession session,@PathVariable int customerId) {
		Employee employee = (Employee) session.getAttribute("user");
		customer.setCustomerId(customerId);
		customer.setPrincipalId(1);
		customer.setPrincipalNumber(1);
		customerService.updateCustomer(customer);
		ModelAndView view = new ModelAndView();
		view.setViewName(PageResourceConstant.CUSTOMER_FIRSTDETAIL);
		return view;
	}
	
	@RequestMapping("/updateSecond/{customerId}")
	public ModelAndView updateSecond(Customer customer,HttpSession session,@PathVariable int customerId) {
		Employee employee = (Employee) session.getAttribute("user");
		customer.setCustomerId(customerId);
		customer.setPrincipalId(2);
		customer.setPrincipalNumber(2);
		customerService.updateCustomer(customer);
		ModelAndView view = new ModelAndView();
		view.setViewName(PageResourceConstant.CUSTOMER_SECONDDETAIL);
		return view;
	}
	
	@RequestMapping("/pages/{page}")
	public ModelAndView loadAllCustomersByUser(@PathVariable int page, HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		int count = customerService.countByEmployee(employee.getEmployeeId());
		List<Customer> customers = customerService.getPagedByEmployee(employee.getEmployeeId(), page);
		for(int i=0;i<customers.size();i++){
			String projectName = customerService.getProjectName(customers.get(i).getProjectId());
			customers.get(i).setProjectName(projectName);
		}
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
	
	@RequestMapping("/search")
	public ModelAndView search(String searchStr, HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		System.out.println("::::::::::::::::::::::::"+employee.getEmployeeId());
		System.out.println("::::::::::::::::::::::::"+searchStr);
		
		List<Customer> customers = customerService.getByEmployee(employee
				.getEmployeeId());
//		List<ProjectOutSource> outsources = outSourceService
//				.loadOutSourceByProjectName(searchStr, employee.getEmployeeId());
		ModelAndView view = new ModelAndView();
//		view.addObject("outsources", outsources);
//		view.setViewName(PageResourceConstant.OS_LIST);
		return view;
	}
	
	@RequestMapping("/ajax/projectIdPrincipal")
	public void load(HttpSession session, HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		Employee employee = (Employee) session.getAttribute("user");
		List<ProjectIdPrincipal> list = projectService
				.loadProjectCustomer(employee.getEmployeeId());
		if (!CollectionUtils.isEmpty(list)) {
			JsonResponseUtils.returnJsonResponse(response, list, true, 200);
		}
	}

}
