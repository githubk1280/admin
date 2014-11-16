package com.tmrasys.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tmrasys.domain.Employee;
import com.tmrasys.domain.Message;
import com.tmrasys.service.message.MessageService;
import com.tmrasys.utils.JsonResponseUtils;

@Controller
@RequestMapping("/message")
public class MessageController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private MessageService messageService;

	@PostConstruct
	public void init() {
	}

	@RequestMapping("/ajax/query")
	public void query(HttpSession session, HttpServletResponse response)
			throws IOException {
		Employee employee = (Employee) session.getAttribute("user");
		int employeeId = employee.getEmployeeId();
		List<Message> messages = messageService
				.getMessagesByReceiveId(employeeId);
		if (!CollectionUtils.isEmpty(messages)) {
			JsonResponseUtils.returnJsonResponse(response, messages.size(),
					true, 200);
		}
	}

}
