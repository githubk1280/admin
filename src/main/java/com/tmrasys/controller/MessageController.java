package com.tmrasys.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tmrasys.constant.page.PageResourceConstant;
import com.tmrasys.constant.page.PaginationConstant;
import com.tmrasys.domain.Employee;
import com.tmrasys.domain.Message;
import com.tmrasys.domain.MessageText;
import com.tmrasys.enums.MessageStatusEnum;
import com.tmrasys.service.message.MessageService;
import com.tmrasys.utils.JsonResponseUtils;

@Controller
@RequestMapping("/message")
public class MessageController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private MessageService messageService;

	@RequestMapping("/ajax/query")
	public void query(HttpSession session, HttpServletResponse response)
			throws IOException {
		Employee employee = (Employee) session.getAttribute("user");
		int count = messageService.getMessagesCountByReceiveId(employee
				.getEmployeeId());
		JsonResponseUtils.returnJsonResponse(response, count, true, 200);
	}

	@RequestMapping("/list")
	public ModelAndView list(int p, HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		List<Message> messages = messageService.getMessagesByReceiveId(
				employee.getEmployeeId(), p,
				PaginationConstant.DEFAULT_PAGE_SIZE);
		ModelAndView view = new ModelAndView();
		view.setViewName(PageResourceConstant.MSG_LIST);
		view.addObject("messages", messages);
		return view;
	}

	@RequestMapping("/ajax/msgText/{msgId}/{tId}")
	public void loadMsgText(@PathVariable int msgId, @PathVariable int tId,
			HttpServletResponse response) throws IOException {
		MessageText msgText = messageService.getMessageTextById(tId);
		// 更新
		messageService.updateMessageStatus(msgId,
				MessageStatusEnum.READ.getValue());
		JsonResponseUtils.returnJsonResponse(response, msgText.getMsgText(),
				true, 200);
	}

}
