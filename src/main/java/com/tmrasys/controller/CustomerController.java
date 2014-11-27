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
import org.springframework.web.bind.annotation.RequestBody;
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

	@RequestMapping("/ajax/{projectId}")
	public void load(@PathVariable int projectId, HttpServletRequest request,
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
				customerService.updateCustomer(c);
			}
		}
		JsonResponseUtils.returnJsonResponse(response, "", true, 200);
	}

}
