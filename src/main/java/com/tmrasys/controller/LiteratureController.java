package com.tmrasys.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tmrasys.domain.Employee;
import com.tmrasys.service.message.MessageService;
import com.tmrasys.utils.JsonResponseUtils;

@Controller
@RequestMapping("/msg")
public class LiteratureController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private MessageService messageService;

	@RequestMapping("/list")
	public void query(HttpSession session, HttpServletResponse response)
			throws IOException {
		Employee employee = (Employee) session.getAttribute("user");
		int count = messageService.getMessagesCountByReceiveId(employee
				.getEmployeeId());
		JsonResponseUtils.returnJsonResponse(response, count, true, 200);
	}
}
