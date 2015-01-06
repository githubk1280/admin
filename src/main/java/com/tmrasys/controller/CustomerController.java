package com.tmrasys.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.google.common.collect.Lists;
import com.tmrasys.constant.DataCheckTypeConstant;
import com.tmrasys.constant.page.PageResourceConstant;
import com.tmrasys.domain.ContactRecord;
import com.tmrasys.domain.Customer;
import com.tmrasys.domain.Employee;
import com.tmrasys.domain.ProjectIdPrincipal;
import com.tmrasys.domain.TouchRecPkg;
import com.tmrasys.service.contactRecord.ContactRecordService;
import com.tmrasys.service.customer.CustomerService;
import com.tmrasys.service.project.ProjectService;
import com.tmrasys.stereotype.DataAccessCheck;
import com.tmrasys.utils.JsonResponseUtils;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private CustomerService customerService;
	@Autowired
	private ProjectService projectService;
	@Autowired
	private ContactRecordService contactRecordService;

	@DataAccessCheck(forWhat = { DataCheckTypeConstant.CUSTOMER })
	@RequestMapping("/{customerId}&{principalId}")
	public ModelAndView loadProjectById(@PathVariable int customerId,
			@PathVariable int principalId) {
		Customer customer = customerService.getById(customerId);
		ModelAndView view = new ModelAndView();
		view.addObject("customer", customer);
		if (principalId == 0) {
			view.setViewName(PageResourceConstant.CUSTOMER_PRINCIPALDETAIL);
		} else if (principalId == 1) {
			view.setViewName(PageResourceConstant.CUSTOMER_FIRSTDETAIL);
		} else if (principalId == 2) {
			view.setViewName(PageResourceConstant.CUSTOMER_SECONDDETAIL);
		}
		view.addObject("contactRecords", contactRecordService.getByCustomerId(customerId));
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
	public ModelAndView addPrincipal(Customer customer, HttpSession session) {
		customer.setPrincipalId(0);
		customer.setPrincipalNumber(0);
		customerService.addCustomer(customer);
		ModelAndView view = new ModelAndView();
		view.setViewName("redirect:pages/1");
		return view;
	}

	@RequestMapping("/addFirst")
	public ModelAndView addFirst(Customer customer, HttpSession session) {
		customer.setPrincipalId(1);
		customer.setPrincipalNumber(1);
		customerService.addCustomer(customer);
		ModelAndView view = new ModelAndView();
		view.setViewName("redirect:pages/1");
		return view;
	}

	@RequestMapping("/addSecond")
	public ModelAndView addSecond(Customer customer, HttpSession session) {
		customer.setPrincipalId(2);
		customer.setPrincipalNumber(2);
		customerService.addCustomer(customer);
		ModelAndView view = new ModelAndView();
		view.setViewName("redirect:pages/1");
		return view;
	}

	@RequestMapping("/updatePrincipal/{customerId}")
	public ModelAndView updatePrincipal(Customer customer, HttpSession session,
			@PathVariable int customerId) {
		customer.setCustomerId(customerId);
		customerService.updateCustomer(customer);
		ModelAndView view = new ModelAndView();
		view.setViewName(PageResourceConstant.CUSTOMER_PRINCIPALDETAIL);
		return view;
	}

	@RequestMapping("/updateFirst/{customerId}")
	public ModelAndView updateFirst(Customer customer, HttpSession session,
			@PathVariable int customerId) {
		customer.setCustomerId(customerId);
		customer.setPrincipalId(1);
		customer.setPrincipalNumber(1);
		customerService.updateCustomer(customer);
		ModelAndView view = new ModelAndView();
		view.setViewName(PageResourceConstant.CUSTOMER_FIRSTDETAIL);
		return view;
	}

	@RequestMapping("/updateSecond/{customerId}")
	public ModelAndView updateSecond(Customer customer, HttpSession session,
			@PathVariable int customerId) {
		customer.setCustomerId(customerId);
		customer.setPrincipalId(2);
		customer.setPrincipalNumber(2);
		customerService.updateCustomer(customer);
		ModelAndView view = new ModelAndView();
		view.setViewName(PageResourceConstant.CUSTOMER_SECONDDETAIL);
		return view;
	}

	@RequestMapping("/pages/{page}")
	public ModelAndView loadAllCustomersByUser(@PathVariable int page,
			HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		int count = customerService.countByEmployee(employee.getEmployeeId());
		List<Customer> customers = customerService.getPagedByEmployee(
				employee.getEmployeeId(), page);
		for (int i = 0; i < customers.size(); i++) {
			String projectName = customerService.getProjectName(customers
					.get(i).getProjectId());
			customers.get(i).setProjectName(projectName);
		}
		ModelAndView view = new ModelAndView();
		int pages = 1;
		if (count > 10) {
			pages = (count + 9) / 10;
		}
		view.addObject("customers", customers);
		view.addObject("pages", pages);
		view.setViewName(PageResourceConstant.CUSTOMER_LIST);
		return view;

	}

	@RequestMapping("/ajax/{projectId}")
	public void load(@PathVariable String projectId,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
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
		List<Customer> customers = JSON.parseArray(sb.toString(),
				Customer.class);
		if (!CollectionUtils.isEmpty(customers)) {
			for (Customer c : customers) {
				if (customerService.getById(c.getCustomerId()) == null) {
					customerService.addCustomer(c);
				} else {
					customerService.updateCustomer(c);
				}
			}
		}
		JsonResponseUtils.returnJsonResponse(response, "", true, 200);
	}

	@RequestMapping("/addPrincipal-redirect/{projectId}")
	public ModelAndView addPrincipalRedirect(@PathVariable String projectId) {
		Customer cust = new Customer();
		ModelAndView view = new ModelAndView();
		cust.setProjectId(projectId);
		view.addObject(cust);
		view.setViewName(PageResourceConstant.CUSTOMER_ADDPRINCIPAL);
		return view;

	}

	@RequestMapping("/addFirst-redirect/{projectId}")
	public ModelAndView addFirstRedirect(@PathVariable String projectId) {
		Customer cust = new Customer();
		ModelAndView view = new ModelAndView();
		cust.setProjectId(projectId);
		view.addObject(cust);
		view.setViewName(PageResourceConstant.CUSTOMER_ADDFIRST);
		return view;
	}

	@RequestMapping("/addSecond-redirect/{projectId}")
	public ModelAndView addSecondRedirect(@PathVariable String projectId) {
		Customer cust = new Customer();
		ModelAndView view = new ModelAndView();
		cust.setProjectId(projectId);
		view.addObject(cust);
		view.setViewName(PageResourceConstant.CUSTOMER_ADDSECOND);
		return view;
	}

	@RequestMapping("/search")
	public ModelAndView search(String searchStr, HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		List<Customer> customers = customerService.getByEmployee(employee
				.getEmployeeId());
		List<Customer> filtedCustomers = Lists.newArrayList();
		for (Customer c : customers) {
			String projectName = customerService.getProjectName(c.getProjectId());
			c.setProjectName(projectName);
			if (null != c.getProjectName()
					&& c.getProjectName().indexOf(searchStr) != -1) {
				filtedCustomers.add(c);
			}
		}
		ModelAndView view = new ModelAndView();
		view.addObject("customers", filtedCustomers);
		view.setViewName(PageResourceConstant.CUSTOMER_LIST);
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
	//@PathVariable Date contactTime, {contactTime}
	@RequestMapping("/addContactRecord/{contactTime}&{contactContent}&{contactPerson}&{contactPhone}&{customerId}&{principalId}")
	public ModelAndView addContactRecord(@PathVariable String contactTime, @PathVariable String contactContent,
			@PathVariable String contactPerson,@PathVariable String contactPhone,@PathVariable int customerId, @PathVariable int principalId) throws UnsupportedEncodingException {
		ContactRecord record = new ContactRecord();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		record.setContactContent(new String(contactContent.getBytes("iso8859-1"),"utf-8"));
		try {
			record.setContactTime(format.parse(contactTime));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		record.setContactPerson(new String(contactPerson.getBytes("iso8859-1"),"utf-8"));
		record.setContactPhone(new String(contactPhone.getBytes("iso8859-1"),"utf-8"));
		record.setCustomerId(customerId);
		contactRecordService.addContact(record);
		return new ModelAndView("customer/add-success");
	}
	
	@RequestMapping("/listContacts&{customerId}")
	public ModelAndView loadContacts(@PathVariable int customerId) {
		ModelAndView view = new ModelAndView();
		String customerName = customerService.getCustomerName(customerId);
		List<ContactRecord> crList = contactRecordService.getByCustomerId(customerId);
		TouchRecPkg trPkg = new TouchRecPkg(customerId,crList,customerName);
		view.addObject("contacts", trPkg);
		view.setViewName("customer/touchHis");
		return view;
	}

}
